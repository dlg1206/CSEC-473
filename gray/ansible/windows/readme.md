# Home for windows files
Home of all windows files for the competition

## CreateUsers
Calls the addUsers role and adds a bunch of users to AD. Shouldn't need to change anything here. If ansible.cfg isn't in the file you do need to specify the inventory file

```
ansible-playbook createUsers.yml
ansible-playbook -i inventory.yml createUsers.yml
```

## CreateLocalUsers
Calls to the addLocalUsers role which adds a bunch of local users. Meant to be run on all blue windows boxes to create all the local users.
```
ansible-playbook -i main_inv.yml createLocalUsers.yml
```

## New Domain
This promotes a windows server to a domain controller, creates a new domain, and starts the DNS service to have hostname routing. 

this doesn't use an inventory file, but instead adds to it dynamically
```
ansible-playbook newdomain.yml
```

## deploy_smb.yml
Ansible playbook to deploy SMB share to Music box. It creates the necessary file locations, sets them to be SMB shares, and copies over some files from the ```smb_files``` directory. Meant to be run with main inventory file that identifies the 'Music' box IP address.
```
ansible-playbook -i main_inv.yml deploy_smb.yml
```