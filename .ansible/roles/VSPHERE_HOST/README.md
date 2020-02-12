---

- hosts: localhost
  vars_files:
    - "files/SECRET.yml"
    - "{{ inventory_file }}.conf"

  roles:
# just create VM from template
    - role: VSPHERE_HOST
      VSPHERE_vm_name: newvm009
      VSPHERE_template: ubuntu-16.04-lts-server
      VSPHERE_vm_folder: intwrs
      VSPHERE_vm_state: created
      tags:
        - vsphere_create

# create VM from template and resize
    - role: VSPHERE_HOST
      VSPHERE_vm_name: newvm009
      VSPHERE_template: ubuntu-16.04-lts-server
      VSPHERE_vm_folder: intwrs
      VSPHERE_vm_storage_gb: 40
      VSPHERE_vm_memory_mb: 4096
      VSPHERE_vm_num_cpus: 4
      VSPHERE_vm_state: reconfigured
      tags:
        - vsphere_reconfigure

# remove VM
    - role: VSPHERE_HOST
      VSPHERE_vm_name: newvm009
      VSPHERE_vm_state: absent
      tags:
        - vsphere_remove

