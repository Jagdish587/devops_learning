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


# Create Datacenter

resource "vsphere_datacenter" "dc" {
  name = "DC01"
}


# Create Cluster

resource "vsphere_compute_cluster" "cluster" {
  name          = "Cluster01"
  datacenter_id = vsphere_datacenter.dc.id

  # Enable vSphere HA
  ha_enabled = true

  # Enable vSphere DRS
  drs_enabled = true

  drs_automation_level = "fullyAutomated"
}
