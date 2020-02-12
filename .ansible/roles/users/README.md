ansible-playbook -i stack_inventory/vsphere users.yml -l nginx -e state=no -e group=vxdeveloper -u jury.golik -Dvv
