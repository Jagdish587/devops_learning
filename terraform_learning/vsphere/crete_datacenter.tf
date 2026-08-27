terraform {
  required_providers {
    vsphere = {
      source = "vmware/vsphere"
    }
  }
}

provider "vsphere" {
  vsphere_server       = "YOUR_VCENTER_IP_OR_FQDN"
  user                 = "administrator@vsphere.local"
  password             = "YOUR_PASSWORD"
  allow_unverified_ssl = true
}


resource "vsphere_datacenter" "dc" {
  name = "DC01"
}
