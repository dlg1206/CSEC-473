# Home for windows files
Home of all windows files for the competition

## CreateUsers
Calls the addUsers role and adds a bunch of users to AD. Shouldn't need to change anything here. If ansible.cfg isn't in the file you do need to specify the inventory file

```
ansible-playbook createUsers.yml
ansible-playbook -i inventory.yml createUsers.yml
```

## New Domain
This promotes a windows server to a domain controller, creates a new domain, and starts the DNS service to have hostname routing. 

this doesn't use an inventory file, but instead adds to it dynamically
```
ansible-playbook newdomain.yml
```