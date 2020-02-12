    $ cat playbook.yml

# Micro HowTo
    - hosts: localhost
      vars_files:
        - "files/SECRET.yml"
        - "{{inventory_file}}.conf"
      roles:

# Image from DockerHub repo
     - role: docker
       DOCKER_name: container0
       DOCKER_image: "busybox"

# Image from private repo
     - role: docker
       DOCKER_name: container1
       DOCKER_image: "hub.cdp.cc/cdp/container1"
       DOCKER_image_from_private_repo: yes

# Link this image and expose ports
     - role: docker
       DOCKER_name: container2
       DOCKER_image: "hub.cdp.cc/cdp/container2"
       DOCKER_image_from_private_repo: yes
       DOCKER_ports:
         - 9:8
         - 10:7
       DOCKER_links:
         - container0:busybox

# Image from another repo (with auth)
     - role: docker
       DOCKER_name: container3
       DOCKER_image: "registry.pyhead.net/container3"
       DOCKER_username: "My_CUSTOM_USERNAME"
       DOCKER_password: "ZXN3*/s\\d/.?ZWVzOn-6lpd!3TRwYyFA"
       DOCKER_email: "eswees@pyhead.net"
       DOCKER_ports:
         - 9:5
       DOCKER_env:
         LOG_LEVEL: INFO
       DOCKER_links:
         - container0:busybox
