user = "administrator@vsphere.local" # vSphere User

password = "password" # vSphere Password

vsphere_server = "172.31.112.2" # vSphere URL (IP, hostname or FQDN)

datacenter = "datacenter01" # vSphere datacenter

datastore = "SSD-Storage" # vSphere datastore

compute_cluster = "cluster01" # vSphere cluster

# Virtual Machine configuration
name = "terraform-test" # name of the virtual machine

template = "ubuntu-template-cloud" # chosen name of the template

network = "VM Network" # network for the VM to reside in

cpus = 2 # CPU cores of the VM

memory = 8024 # Memory of the VM in Mb

hostname = "your-hostname"

domain = "yourdomain-name"

ip = "172.31.112.94" # ip for VM

netmask = "24"

gateway = "172.31.112.1"
