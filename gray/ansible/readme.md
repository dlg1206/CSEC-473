# Home for Gray Team Ansible Scripts

## Deploy Hosts
The deployLinux.yml and deployWindows.yml scripts create openstack hosts that fit the variables defined in each file. They use the roles defined in the roles directory to:
1. Download necessary openstack dependencies
2. create the host itself
> [!WARNING]
> If you run into an issue running these scripts make sure you source the rc file and enter your openstack password
> i.e. `source sdd4181-openrc.sh`
