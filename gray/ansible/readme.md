# Home for Gray Team Ansible Scripts

## Deploy Hosts
The deployLinux.yml and deployWindows.yml scripts create openstack hosts that fit the variables defined in each file. They use the roles defined in the roles directory to:
1. Download necessary openstack dependencies
2. create the host itself
> [!WARNING]
> If you run into an issue running these scripts make sure you source the rc file and enter your openstack password.<br>
> -  `source sdd4181-openrc.sh`

 To change the network, hostname, IP address, etc., you have to go into the deploy.yml files and change the variables 

 ```
    flavorSize: small/large                             (shouldn't need to change)
    volumeSize: 100/250                                 (shouldn't need to change)
    keyName: Ansible-Key                                (ansible key-pair name you created in openstack)
    network_id: d8dcba1c-9405-433c-a2e5-f4c205e7cade    (ID of network you created in openstack)
    hostip: 192.168.1.10                                (Unique: IP you want the host to have)
    hostname: linux_host                                (hostname)
    hostImage: UbuntuJammy2204-Desktop                  (pick from list in openstack)
```