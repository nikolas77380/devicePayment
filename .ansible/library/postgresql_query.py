#!/usr/bin/python
# -*- coding: utf-8 -*-

EXAMPLES = '''
- postgresql_query:
    db: acme 
    user: django 
    password: ceec4eif7ya 
    query: SELECT * FROM a_table WHERE a_column=%s AND b_column=%s
    positional_arguments:
    - "positional string value 1"
    - "positional string value 2"
- postgresql_query:
    db: acme 
    user: django 
    password: ceec4eif7ya 
    query: SELECT * FROM some_table WHERE a_column=%(a_value)s AND b_column=%(b_value)s
    named_arguments:
      a_value: "positional string value 1"
      b_value: "positional string value 2"
'''

import re
import itertools

try:
    import psycopg2
    import psycopg2.extras
except ImportError:
    postgresqldb_found = False
else:
    postgresqldb_found = True


def main():
    module = AnsibleModule(
        argument_spec=dict(
            user=dict(default="postgres"),
            password=dict(default=""),
            host=dict(default=""),
            sslmode={"choices":["disable","allow","prefer","require","verify-ca","verify-full"]},
            unix_socket=dict(default=""),
            db=dict(default=''),
            port=dict(default='5432'),
            query=dict(type="str"),
            positional_arguments=dict(type="list"),
            named_arguments=dict(type="dict")
        ),
        mutually_exclusive=[
          ["positional_arguments","named_arguments"]
        ],
        supports_check_mode = False
    )

    db = module.params["db"]
    if db == '':
        module.fail_json(msg="a database must be specified")
    port = module.params["port"]

    if not postgresqldb_found:
        module.fail_json(msg="the python psycopg2 module is required")

    params_map = {
        "host":"host",
        "user":"user",
        "password":"password",
        "port":"port",
        "db":"database",
        "sslmode": "sslmode"
    }
    kw = dict( (params_map[k], v) for (k, v) in module.params.iteritems()
              if k in params_map and v != "" )

    is_localhost = "host" not in kw or kw["host"] == "" or kw["host"] == "localhost"
    if is_localhost and module.params["unix_socket"] != "":
        kw["host"] = module.params["unix_socket"]

    try:
        db_connection = psycopg2.connect(**kw)
        cursor = db_connection.cursor(cursor_factory=psycopg2.extras.RealDictCursor)
    except Exception, e:
        module.fail_json(msg="unable to connect to database: %s" % e)

    def cast_timestamp(value,cur):
        if value is None:
            return None
        return str(value)
    cursor.execute("SELECT NULL::timestamp")
    oid = cursor.description[0][1]
    sqltype = psycopg2.extensions.new_type((oid,), "timestamp", cast_timestamp)
    psycopg2.extensions.register_type(sqltype)

    arguments = None
    if module.params["positional_arguments"] is not None:
        arguments = module.params["positional_arguments"]
    elif module.params["named_arguments"] is not None:
        arguments = module.params["named_arguments"]

    try:
        cursor.execute(module.params["query"], arguments)
    except Exception, e:
        module.fail_json(msg="unable to execute query: %s" % e, query_arguments=arguments)
    
    query_result = []
    if cursor.rowcount > 0:
        try:
            query_result = cursor.fetchall()
        except psycopg2.ProgrammingError:
            pass

    db_connection.commit()
    db_connection.close()
    
    module.exit_json(changed=True, query_result=query_result, rowcount=len(query_result))

from ansible.module_utils.basic import *
from ansible.module_utils.database import *
main()
