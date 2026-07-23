output "file_info" {
  value = {
    filename = local_file.hello.filename
    content  = local_file.hello.content
  }
}

output "details" {
  value = {
    filename = local.newfilename
    message  = local.newmessage
  }
}