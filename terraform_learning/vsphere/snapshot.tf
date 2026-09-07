resource "vsphere_virtual_machine_snapshot" "demo1" {
  virtual_machine_uuid = "9aac5551-a351-4158-8c5c-15a71e8ec5c9"
  snapshot_name        = "Snapshot Name"
  description          = "This is Demo Snapshot"
  memory               = "true"
  quiesce              = "true"
  remove_children      = "false"
  consolidate          = "true"
}
