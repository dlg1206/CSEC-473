These are instructions for how to use webserver_setup.yml and setup_DNS.yml.

webserver_setup.yml

This ansible script is meant to install and configure apache2 on a linux machine then send over html/php/etc. files over to the document root to create a functional webserver.
To use this script you need the following files.

	- default.yml: in the same directory as webserver_setup.yml
	- files directory containing:
		- apache-template.conf
		- documentRoot directory containing any .html/.php/etc files you want to be in the document root for the webserver.
	- inventory.ini file to specify the http IPs

You also need to have ansible setup correct to connect to the webserver you plan on configuring.

To set up a new IP that you want to configure Apache2 for just simply set it up how you normally would set up an ubuntu linux machine with openstack and ansible and 
type the IP address under [http] in the inventory.ini file.

The default.yml holds important variables that may change.
	- app_user = This is the user that has access to the documentRoot directory for the webserver
	- http_conf = This will be used to name configuration files specific to this webserver
	- http_host = This will be used for the Server Name, and information in the apache-template.conf file
	- http_port = This will define the port HTTP will use, keep it at 80 unless there is a good reason
	- disable_default = If true, disables default apache site at 000-default.conf

To run the script type ansible-playbook webserver_setup.yml into the deployment machine in your directory with webserver setup.
	Make sure you have ansible.conf configured to point to the inventory.ini directory.



setup_DNS.yml

This ansible script installs DNS on a Windows Server, built for Windows Server 2019, creates a primary DNS zone and adds an A record into it.
The purpose of this script was to see if a configured webserver with webserver_setup.yml could be an A record to perform like an actual webserver.

To use this script you need:
	- inventory.ini
Since this script is so short, I decided not to declare variables like I did with webserver_setup.yml

To change the primary DNS zone, open the file with gedit/vim/nano/etc and change the string after -Name to the desired outcome and the zone at the 
bottom of the file to the desired zone. These must be the same string.
	- Currently these are both "kareoke.com"

You should also change the zone file if you change the zone name for simplicity, right now it is "kareoke.com.dns"

You can change the name of the webserver by changing the "www" to anything you want as well under community.windows.win_dns_record:

Lastly, to configure a different device, change the IP address that is being used under value. Also, you could copy the code and change the value to another IP.

To run this script type: ansible-playbook setup_DNS.yml into the directory ot setup_DNS.yml.

This script does not configure clients to use the dns server, so that will either need to be manually configured or done through another script.
	Do this with 'sudo echo "nameserver 192.168.1.10" >> /etc/resolv.conf' on Linux, IP is whatever the DNS server is.

THIS SCRIPT CANNOT WORK IF THE DOMAIN IS ALREADY CREATED. Remove either using a script or the command: Remove-DNSServerZone -Name "example.com"


