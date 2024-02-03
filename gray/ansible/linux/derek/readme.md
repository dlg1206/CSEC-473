Derek Garcia
dlg1206

# Running

## Create OpenStack Instances
This script will use information in the inventory file to build out linux and windows boxes

```bash
ansible-playbook create_instances.yml
```

## Connect Linux Boxes with SSH
This script will manage ssh keys and allow target boxes ssh into each other. Currently available for linux only
```bash
ansible-playbook  connect_hosts.yml
```

## Set Up infrastuture
This script will validate the host can use OpenStack cli, then run the `create_instances.yml` and `connect_hosts.yml` playbooks
```bash
ansible-playbook create_instances.yml
```

Current setup will create 2 Ubuntu boxes and 1 Windows box. 