resource "vsphere_virtual_machine" "rocky_vm" {

  name = "rocky-linux-01"

  # Specific ESXi host
  host_system_id = data.vsphere_host.esxi01.id

  # Existing datastore
  datastore_id = data.vsphere_datastore.datastore.id

  # VM hardware
  num_cpus = 2
  memory   = 4096

  # Get OS information from template
  guest_id = data.vsphere_virtual_machine.rocky_template.guest_id

  # Get SCSI controller type from template
  scsi_type = data.vsphere_virtual_machine.rocky_template.scsi_type


  # ------------------------------------------------
  # Network
  # ------------------------------------------------

  network_interface {
    network_id = data.vsphere_network.network.id

    adapter_type = data.vsphere_virtual_machine.rocky_template.network_interface_types[0]
  }


  # ------------------------------------------------
  # Disk
  # ------------------------------------------------

  disk {
    label            = "disk0"
    size             = 50
    thin_provisioned = true
  }


  # ------------------------------------------------
  # Clone template
  # ------------------------------------------------

  clone {
    template_uuid = data.vsphere_virtual_machine.rocky_template.id
  }
}
