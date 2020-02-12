{
    "ansible_all_ipv4_addresses": [
        "138.68.72.114", 
        "10.19.0.6"
    ], 
    "ansible_all_ipv6_addresses": [
        "fe80::601:65ff:feea:6801"
    ], 
    "ansible_apparmor": {
        "status": "enabled"
    }, 
    "ansible_architecture": "x86_64", 
    "ansible_bios_date": "12/12/2017", 
    "ansible_bios_version": "20171212", 
    "ansible_cmdline": {
        "BOOT_IMAGE": "/boot/vmlinuz-4.4.0-112-generic", 
        "clocksource": "kvm-clock", 
        "console": "tty1", 
        "net.ifnames": "0", 
        "notsc": true, 
        "ro": true, 
        "root": "LABEL=DOROOT"
    }, 
    "ansible_date_time": {
        "date": "2018-05-03", 
        "day": "03", 
        "epoch": "1525356482", 
        "hour": "14", 
        "iso8601": "2018-05-03T14:08:02Z", 
        "iso8601_basic": "20180503T140802215798", 
        "iso8601_basic_short": "20180503T140802", 
        "iso8601_micro": "2018-05-03T14:08:02.215893Z", 
        "minute": "08", 
        "month": "05", 
        "second": "02", 
        "time": "14:08:02", 
        "tz": "UTC", 
        "tz_offset": "+0000", 
        "weekday": "Thursday", 
        "weekday_number": "4", 
        "weeknumber": "18", 
        "year": "2018"
    }, 
    "ansible_default_ipv4": {
        "address": "138.68.72.114", 
        "alias": "eth0", 
        "broadcast": "138.68.79.255", 
        "gateway": "138.68.64.1", 
        "interface": "eth0", 
        "macaddress": "04:01:65:ea:68:01", 
        "mtu": 1500, 
        "netmask": "255.255.240.0", 
        "network": "138.68.64.0", 
        "type": "ether"
    }, 
    "ansible_default_ipv6": {}, 
    "ansible_device_links": {
        "ids": {}, 
        "labels": {
            "vda1": [
                "DOROOT"
            ]
        }, 
        "masters": {}, 
        "uuids": {
            "vda1": [
                "1349ae81-def5-4589-9b71-9ee5fbe4db66"
            ]
        }
    }, 
    "ansible_devices": {
        "loop0": {
            "holders": [], 
            "host": "", 
            "links": {
                "ids": [], 
                "labels": [], 
                "masters": [], 
                "uuids": []
            }, 
            "model": null, 
            "partitions": {}, 
            "removable": "0", 
            "rotational": "1", 
            "sas_address": null, 
            "sas_device_handle": null, 
            "scheduler_mode": "", 
            "sectors": "0", 
            "sectorsize": "512", 
            "size": "0.00 Bytes", 
            "support_discard": "0", 
            "vendor": null, 
            "virtual": 1
        }, 
        "loop1": {
            "holders": [], 
            "host": "", 
            "links": {
                "ids": [], 
                "labels": [], 
                "masters": [], 
                "uuids": []
            }, 
            "model": null, 
            "partitions": {}, 
            "removable": "0", 
            "rotational": "1", 
            "sas_address": null, 
            "sas_device_handle": null, 
            "scheduler_mode": "", 
            "sectors": "0", 
            "sectorsize": "512", 
            "size": "0.00 Bytes", 
            "support_discard": "0", 
            "vendor": null, 
            "virtual": 1
        }, 
        "loop2": {
            "holders": [], 
            "host": "", 
            "links": {
                "ids": [], 
                "labels": [], 
                "masters": [], 
                "uuids": []
            }, 
            "model": null, 
            "partitions": {}, 
            "removable": "0", 
            "rotational": "1", 
            "sas_address": null, 
            "sas_device_handle": null, 
            "scheduler_mode": "", 
            "sectors": "0", 
            "sectorsize": "512", 
            "size": "0.00 Bytes", 
            "support_discard": "0", 
            "vendor": null, 
            "virtual": 1
        }, 
        "loop3": {
            "holders": [], 
            "host": "", 
            "links": {
                "ids": [], 
                "labels": [], 
                "masters": [], 
                "uuids": []
            }, 
            "model": null, 
            "partitions": {}, 
            "removable": "0", 
            "rotational": "1", 
            "sas_address": null, 
            "sas_device_handle": null, 
            "scheduler_mode": "", 
            "sectors": "0", 
            "sectorsize": "512", 
            "size": "0.00 Bytes", 
            "support_discard": "0", 
            "vendor": null, 
            "virtual": 1
        }, 
        "loop4": {
            "holders": [], 
            "host": "", 
            "links": {
                "ids": [], 
                "labels": [], 
                "masters": [], 
                "uuids": []
            }, 
            "model": null, 
            "partitions": {}, 
            "removable": "0", 
            "rotational": "1", 
            "sas_address": null, 
            "sas_device_handle": null, 
            "scheduler_mode": "", 
            "sectors": "0", 
            "sectorsize": "512", 
            "size": "0.00 Bytes", 
            "support_discard": "0", 
            "vendor": null, 
            "virtual": 1
        }, 
        "loop5": {
            "holders": [], 
            "host": "", 
            "links": {
                "ids": [], 
                "labels": [], 
                "masters": [], 
                "uuids": []
            }, 
            "model": null, 
            "partitions": {}, 
            "removable": "0", 
            "rotational": "1", 
            "sas_address": null, 
            "sas_device_handle": null, 
            "scheduler_mode": "", 
            "sectors": "0", 
            "sectorsize": "512", 
            "size": "0.00 Bytes", 
            "support_discard": "0", 
            "vendor": null, 
            "virtual": 1
        }, 
        "loop6": {
            "holders": [], 
            "host": "", 
            "links": {
                "ids": [], 
                "labels": [], 
                "masters": [], 
                "uuids": []
            }, 
            "model": null, 
            "partitions": {}, 
            "removable": "0", 
            "rotational": "1", 
            "sas_address": null, 
            "sas_device_handle": null, 
            "scheduler_mode": "", 
            "sectors": "0", 
            "sectorsize": "512", 
            "size": "0.00 Bytes", 
            "support_discard": "0", 
            "vendor": null, 
            "virtual": 1
        }, 
        "loop7": {
            "holders": [], 
            "host": "", 
            "links": {
                "ids": [], 
                "labels": [], 
                "masters": [], 
                "uuids": []
            }, 
            "model": null, 
            "partitions": {}, 
            "removable": "0", 
            "rotational": "1", 
            "sas_address": null, 
            "sas_device_handle": null, 
            "scheduler_mode": "", 
            "sectors": "0", 
            "sectorsize": "512", 
            "size": "0.00 Bytes", 
            "support_discard": "0", 
            "vendor": null, 
            "virtual": 1
        }, 
        "vda": {
            "holders": [], 
            "host": "SCSI storage controller: Red Hat, Inc Virtio block device", 
            "links": {
                "ids": [], 
                "labels": [], 
                "masters": [], 
                "uuids": []
            }, 
            "model": null, 
            "partitions": {
                "vda1": {
                    "holders": [], 
                    "links": {
                        "ids": [], 
                        "labels": [
                            "DOROOT"
                        ], 
                        "masters": [], 
                        "uuids": [
                            "1349ae81-def5-4589-9b71-9ee5fbe4db66"
                        ]
                    }, 
                    "sectors": "62910431", 
                    "sectorsize": 512, 
                    "size": "30.00 GB", 
                    "start": "4096", 
                    "uuid": "1349ae81-def5-4589-9b71-9ee5fbe4db66"
                }, 
                "vda15": {
                    "holders": [], 
                    "links": {
                        "ids": [], 
                        "labels": [], 
                        "masters": [], 
                        "uuids": []
                    }, 
                    "sectors": "2048", 
                    "sectorsize": 512, 
                    "size": "1.00 MB", 
                    "start": "2048", 
                    "uuid": null
                }
            }, 
            "removable": "0", 
            "rotational": "1", 
            "sas_address": null, 
            "sas_device_handle": null, 
            "scheduler_mode": "", 
            "sectors": "62914560", 
            "sectorsize": "512", 
            "size": "30.00 GB", 
            "support_discard": "0", 
            "vendor": "0x1af4", 
            "virtual": 1
        }
    }, 
    "ansible_distribution": "Ubuntu", 
    "ansible_distribution_file_parsed": true, 
    "ansible_distribution_file_path": "/etc/os-release", 
    "ansible_distribution_file_variety": "Debian", 
    "ansible_distribution_major_version": "16", 
    "ansible_distribution_release": "xenial", 
    "ansible_distribution_version": "16.04", 
    "ansible_dns": {
        "nameservers": [
            "8.8.8.8", 
            "8.8.4.4"
        ]
    }, 
    "ansible_domain": "mytefl.com", 
    "ansible_effective_group_id": 0, 
    "ansible_effective_user_id": 0, 
    "ansible_env": {
        "HOME": "/root", 
        "LANG": "C", 
        "LC_ADDRESS": "uk_UA.UTF-8", 
        "LC_ALL": "C", 
        "LC_IDENTIFICATION": "uk_UA.UTF-8", 
        "LC_MEASUREMENT": "uk_UA.UTF-8", 
        "LC_MESSAGES": "C", 
        "LC_MONETARY": "uk_UA.UTF-8", 
        "LC_NAME": "uk_UA.UTF-8", 
        "LC_NUMERIC": "uk_UA.UTF-8", 
        "LC_PAPER": "uk_UA.UTF-8", 
        "LC_TELEPHONE": "uk_UA.UTF-8", 
        "LC_TIME": "uk_UA.UTF-8", 
        "LOGNAME": "root", 
        "MAIL": "/var/mail/root", 
        "PATH": "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin", 
        "PWD": "/home/juriy.tischenko", 
        "SHELL": "/bin/bash", 
        "SUDO_COMMAND": "/bin/sh -c echo BECOME-SUCCESS-jlrwpbrciqhinfgynignfhtsrehsmdjs; /usr/bin/python", 
        "SUDO_GID": "1005", 
        "SUDO_UID": "1004", 
        "SUDO_USER": "juriy.tischenko", 
        "TERM": "unknown", 
        "USER": "root", 
        "USERNAME": "root"
    }, 
    "ansible_eth0": {
        "active": true, 
        "device": "eth0", 
        "features": {
            "busy_poll": "on [fixed]", 
            "fcoe_mtu": "off [fixed]", 
            "generic_receive_offload": "on", 
            "generic_segmentation_offload": "on", 
            "highdma": "on [fixed]", 
            "hw_tc_offload": "off [fixed]", 
            "l2_fwd_offload": "off [fixed]", 
            "large_receive_offload": "off [fixed]", 
            "loopback": "off [fixed]", 
            "netns_local": "off [fixed]", 
            "ntuple_filters": "off [fixed]", 
            "receive_hashing": "off [fixed]", 
            "rx_all": "off [fixed]", 
            "rx_checksumming": "on [fixed]", 
            "rx_fcs": "off [fixed]", 
            "rx_vlan_filter": "on [fixed]", 
            "rx_vlan_offload": "off [fixed]", 
            "rx_vlan_stag_filter": "off [fixed]", 
            "rx_vlan_stag_hw_parse": "off [fixed]", 
            "scatter_gather": "on", 
            "tcp_segmentation_offload": "on", 
            "tx_checksum_fcoe_crc": "off [fixed]", 
            "tx_checksum_ip_generic": "on", 
            "tx_checksum_ipv4": "off [fixed]", 
            "tx_checksum_ipv6": "off [fixed]", 
            "tx_checksum_sctp": "off [fixed]", 
            "tx_checksumming": "on", 
            "tx_fcoe_segmentation": "off [fixed]", 
            "tx_gre_segmentation": "off [fixed]", 
            "tx_gso_robust": "on [fixed]", 
            "tx_ipip_segmentation": "off [fixed]", 
            "tx_lockless": "off [fixed]", 
            "tx_nocache_copy": "off", 
            "tx_scatter_gather": "on", 
            "tx_scatter_gather_fraglist": "off [fixed]", 
            "tx_sit_segmentation": "off [fixed]", 
            "tx_tcp6_segmentation": "on", 
            "tx_tcp_ecn_segmentation": "on", 
            "tx_tcp_segmentation": "on", 
            "tx_udp_tnl_segmentation": "off [fixed]", 
            "tx_vlan_offload": "off [fixed]", 
            "tx_vlan_stag_hw_insert": "off [fixed]", 
            "udp_fragmentation_offload": "on", 
            "vlan_challenged": "off [fixed]"
        }, 
        "hw_timestamp_filters": [], 
        "ipv4": {
            "address": "138.68.72.114", 
            "broadcast": "138.68.79.255", 
            "netmask": "255.255.240.0", 
            "network": "138.68.64.0"
        }, 
        "ipv4_secondaries": [
            {
                "address": "10.19.0.6", 
                "broadcast": "global", 
                "netmask": "255.255.0.0", 
                "network": "10.19.0.0"
            }
        ], 
        "ipv6": [
            {
                "address": "fe80::601:65ff:feea:6801", 
                "prefix": "64", 
                "scope": "link"
            }
        ], 
        "macaddress": "04:01:65:ea:68:01", 
        "mtu": 1500, 
        "pciid": "virtio0", 
        "promisc": false, 
        "speed": -1, 
        "timestamping": [
            "tx_software", 
            "rx_software", 
            "software"
        ], 
        "type": "ether"
    }, 
    "ansible_fips": false, 
    "ansible_form_factor": "Other", 
    "ansible_fqdn": "dev.mytefl.com", 
    "ansible_hostname": "dev", 
    "ansible_interfaces": [
        "lo", 
        "eth0"
    ], 
    "ansible_is_chroot": false, 
    "ansible_kernel": "4.4.0-112-generic", 
    "ansible_lo": {
        "active": true, 
        "device": "lo", 
        "features": {
            "busy_poll": "off [fixed]", 
            "fcoe_mtu": "off [fixed]", 
            "generic_receive_offload": "on", 
            "generic_segmentation_offload": "on", 
            "highdma": "on [fixed]", 
            "hw_tc_offload": "off [fixed]", 
            "l2_fwd_offload": "off [fixed]", 
            "large_receive_offload": "off [fixed]", 
            "loopback": "on [fixed]", 
            "netns_local": "on [fixed]", 
            "ntuple_filters": "off [fixed]", 
            "receive_hashing": "off [fixed]", 
            "rx_all": "off [fixed]", 
            "rx_checksumming": "on [fixed]", 
            "rx_fcs": "off [fixed]", 
            "rx_vlan_filter": "off [fixed]", 
            "rx_vlan_offload": "off [fixed]", 
            "rx_vlan_stag_filter": "off [fixed]", 
            "rx_vlan_stag_hw_parse": "off [fixed]", 
            "scatter_gather": "on", 
            "tcp_segmentation_offload": "on", 
            "tx_checksum_fcoe_crc": "off [fixed]", 
            "tx_checksum_ip_generic": "on [fixed]", 
            "tx_checksum_ipv4": "off [fixed]", 
            "tx_checksum_ipv6": "off [fixed]", 
            "tx_checksum_sctp": "on [fixed]", 
            "tx_checksumming": "on", 
            "tx_fcoe_segmentation": "off [fixed]", 
            "tx_gre_segmentation": "off [fixed]", 
            "tx_gso_robust": "off [fixed]", 
            "tx_ipip_segmentation": "off [fixed]", 
            "tx_lockless": "on [fixed]", 
            "tx_nocache_copy": "off [fixed]", 
            "tx_scatter_gather": "on [fixed]", 
            "tx_scatter_gather_fraglist": "on [fixed]", 
            "tx_sit_segmentation": "off [fixed]", 
            "tx_tcp6_segmentation": "on", 
            "tx_tcp_ecn_segmentation": "on", 
            "tx_tcp_segmentation": "on", 
            "tx_udp_tnl_segmentation": "off [fixed]", 
            "tx_vlan_offload": "off [fixed]", 
            "tx_vlan_stag_hw_insert": "off [fixed]", 
            "udp_fragmentation_offload": "on", 
            "vlan_challenged": "on [fixed]"
        }, 
        "hw_timestamp_filters": [], 
        "ipv4": {
            "address": "127.0.0.1", 
            "broadcast": "host", 
            "netmask": "255.0.0.0", 
            "network": "127.0.0.0"
        }, 
        "ipv6": [
            {
                "address": "::1", 
                "prefix": "128", 
                "scope": "host"
            }
        ], 
        "mtu": 65536, 
        "promisc": false, 
        "timestamping": [
            "rx_software", 
            "software"
        ], 
        "type": "loopback"
    }, 
    "ansible_local": {}, 
    "ansible_lsb": {
        "codename": "xenial", 
        "description": "Ubuntu 16.04.3 LTS", 
        "id": "Ubuntu", 
        "major_release": "16", 
        "release": "16.04"
    }, 
    "ansible_lvm": {
        "lvs": {}, 
        "pvs": {}, 
        "vgs": {}
    }, 
    "ansible_machine": "x86_64", 
    "ansible_machine_id": "a173c2580e69435fbefbafd84d1e064b", 
    "ansible_memfree_mb": 83, 
    "ansible_memory_mb": {
        "nocache": {
            "free": 376, 
            "used": 616
        }, 
        "real": {
            "free": 83, 
            "total": 992, 
            "used": 909
        }, 
        "swap": {
            "cached": 0, 
            "free": 0, 
            "total": 0, 
            "used": 0
        }
    }, 
    "ansible_memtotal_mb": 992, 
    "ansible_mounts": [
        {
            "block_available": 355013, 
            "block_size": 4096, 
            "block_total": 7708122, 
            "block_used": 7353109, 
            "device": "/dev/vda1", 
            "fstype": "ext4", 
            "inode_available": 1616512, 
            "inode_total": 1958400, 
            "inode_used": 341888, 
            "mount": "/", 
            "options": "rw,noatime,errors=remount-ro,data=ordered", 
            "size_available": 1454133248, 
            "size_total": 31572467712, 
            "uuid": "1349ae81-def5-4589-9b71-9ee5fbe4db66"
        }
    ], 
    "ansible_nodename": "dev.mytefl.com", 
    "ansible_os_family": "Debian", 
    "ansible_pkg_mgr": "apt", 
    "ansible_processor": [
        "0", 
        "GenuineIntel", 
        "Intel(R) Xeon(R) CPU E5-2650L v3 @ 1.80GHz"
    ], 
    "ansible_processor_cores": 1, 
    "ansible_processor_count": 1, 
    "ansible_processor_threads_per_core": 1, 
    "ansible_processor_vcpus": 1, 
    "ansible_product_name": "Droplet", 
    "ansible_product_serial": "23456260", 
    "ansible_product_uuid": "B8BD8F70-6974-4C81-98A0-B3DD4DEF967E", 
    "ansible_product_version": "20171212", 
    "ansible_python": {
        "executable": "/usr/bin/python", 
        "has_sslcontext": true, 
        "type": "CPython", 
        "version": {
            "major": 2, 
            "micro": 12, 
            "minor": 7, 
            "releaselevel": "final", 
            "serial": 0
        }, 
        "version_info": [
            2, 
            7, 
            12, 
            "final", 
            0
        ]
    }, 
    "ansible_python_version": "2.7.12", 
    "ansible_real_group_id": 0, 
    "ansible_real_user_id": 0, 
    "ansible_selinux": {
        "status": "Missing selinux Python library"
    }, 
    "ansible_selinux_python_present": false, 
    "ansible_service_mgr": "systemd", 
    "ansible_ssh_host_key_dsa_public": "AAAAB3NzaC1kc3MAAACBANIbEC4EH+kUB1guB1hG2ROG28EGHc2QFdM63ldkB4tWnT9EWTV8xD9uUUWTKzcCAMM2O1DQIq7Zw1TmK5xNbaYxBqtDeyW8nR9CEEz35sv0jbceaFP/PfL1SywVYfKI43cN01SZHWjVlRApIQnLruqisz/xnXTjhhQancMITS7tAAAAFQD6YHLFKHd2dRZRIsPxxRW+NCGUWQAAAIAVvOxRl8VOZGzw565GYPVtB8OSwilE530Yf+UdWpp+OtmDiKajk2GoDd82AJXecrWfI1gzMp7VDE/R45Vcdw5dGesHKiJ5sBHARQUn/qamTONMP1LdvitQD01sflNhDaoPfncdYCIUpLtBnN9xvAVNL9yCfEzKDINFnqUV6FKa1AAAAIBds5pVf6xF0Te0sFS8mGNnO7yZh5LrfcjWPkitKRIvgf8/G7K5Zyt8lOEpwxMY/wdGQFLQI0VU/TzAqy+d3ZoCWTDhnOw1ZPRwHPGJepC69WaJ2MdAYUZui9JoXwczeC0zdvcvOvRbTTpKZM3Fd+RxClDl1v2mN4bo39vo88yhxA==", 
    "ansible_ssh_host_key_ecdsa_public": "AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBIAbyZ/G/dVJF9zM0b2DZFzd4mcHcvCoduytsqg1OcKgIkJZ3s0eQq/MX/QanxNTx6Au2ntnvmHszSiwIxhyik8=", 
    "ansible_ssh_host_key_ed25519_public": "AAAAC3NzaC1lZDI1NTE5AAAAIM7uxWq4VJhXayjX/KoX1jV6/xDlYLXLymgOTZjqWis6", 
    "ansible_ssh_host_key_rsa_public": "AAAAB3NzaC1yc2EAAAADAQABAAABAQC1QuzlC69Qcs03n2bbXTh1XyDyR3dFIPb7OxxZ2TJrwDefXuBodSKHGxFwfvOhmoqPoeWd7G4zSq5Tg18MSSA/WNTbXmPOlBJgvkbanO/Z7KsNQDYMpQBmHKwR2fUEP9JxpZv5cdXuBKUToa9mCU5HiDbz1chfNQ6oljN5NTKfqYSTA50K8s0GXbUTsoOo0+KrnE/W86bP2KfxrYum8aGyDdydk6hpQ82j+pllVkWX3dvx+yEc2/M59qOsUVq+sCBvzcWfZeIExTQXTjYiUtJrmzA+hG8k5X22mMGzMPWeFL3SyNZSa3E2omA2eggRoVxsQSv7J8PWi1yxNWma7f4X", 
    "ansible_swapfree_mb": 0, 
    "ansible_swaptotal_mb": 0, 
    "ansible_system": "Linux", 
    "ansible_system_capabilities": [
        "cap_chown", 
        "cap_dac_override", 
        "cap_dac_read_search", 
        "cap_fowner", 
        "cap_fsetid", 
        "cap_kill", 
        "cap_setgid", 
        "cap_setuid", 
        "cap_setpcap", 
        "cap_linux_immutable", 
        "cap_net_bind_service", 
        "cap_net_broadcast", 
        "cap_net_admin", 
        "cap_net_raw", 
        "cap_ipc_lock", 
        "cap_ipc_owner", 
        "cap_sys_module", 
        "cap_sys_rawio", 
        "cap_sys_chroot", 
        "cap_sys_ptrace", 
        "cap_sys_pacct", 
        "cap_sys_admin", 
        "cap_sys_boot", 
        "cap_sys_nice", 
        "cap_sys_resource", 
        "cap_sys_time", 
        "cap_sys_tty_config", 
        "cap_mknod", 
        "cap_lease", 
        "cap_audit_write", 
        "cap_audit_control", 
        "cap_setfcap", 
        "cap_mac_override", 
        "cap_mac_admin", 
        "cap_syslog", 
        "cap_wake_alarm", 
        "cap_block_suspend", 
        "37+ep"
    ], 
    "ansible_system_capabilities_enforced": "True", 
    "ansible_system_vendor": "DigitalOcean", 
    "ansible_uptime_seconds": 1392935, 
    "ansible_user_dir": "/root", 
    "ansible_user_gecos": "root", 
    "ansible_user_gid": 0, 
    "ansible_user_id": "root", 
    "ansible_user_shell": "/bin/bash", 
    "ansible_user_uid": 0, 
    "ansible_userspace_architecture": "x86_64", 
    "ansible_userspace_bits": "64", 
    "ansible_virtualization_role": "host", 
    "ansible_virtualization_type": "kvm", 
    "gather_subset": [
        "all"
    ], 
    "module_setup": true
}