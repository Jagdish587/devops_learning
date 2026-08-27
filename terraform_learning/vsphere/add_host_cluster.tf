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


# --------------------------------------------------
# Create Datacenter
# --------------------------------------------------

resource "vsphere_datacenter" "dc" {
  name = "DC01"
}


# --------------------------------------------------
# Find existing ESXi Host 1
# --------------------------------------------------

data "vsphere_host" "esxi01" {
  name          = "esxi01.example.com"
  datacenter_id = vsphere_datacenter.dc.id
}


# --------------------------------------------------
# Find existing ESXi Host 2
# --------------------------------------------------

data "vsphere_host" "esxi02" {
  name          = "esxi02.example.com"
  datacenter_id = vsphere_datacenter.dc.id
}


# --------------------------------------------------
# Find existing ESXi Host 3
# --------------------------------------------------

data "vsphere_host" "esxi03" {
  name          = "esxi03.example.com"
  datacenter_id = vsphere_datacenter.dc.id
}


# --------------------------------------------------
# Find existing ESXi Host 4
# --------------------------------------------------

data "vsphere_host" "esxi04" {
  name          = "esxi04.example.com"
  datacenter_id = vsphere_datacenter.dc.id
}


# --------------------------------------------------
# Create Cluster
# --------------------------------------------------

resource "vsphere_compute_cluster" "cluster" {

  name          = "Cluster01"
  datacenter_id = vsphere_datacenter.dc.id

  # Enable HA
  ha_enabled = true

  # Enable DRS
  drs_enabled = true

  # Add the four ESXi hosts to the cluster
  host_system_ids = [
    data.vsphere_host.esxi01.id,
    data.vsphere_host.esxi02.id,
    data.vsphere_host.esxi03.id,
    data.vsphere_host.esxi04.id
  ]
}
