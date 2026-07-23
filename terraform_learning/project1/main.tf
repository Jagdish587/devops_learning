terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "hello" {
  filename = var.filename
  content  = var.message
}



resource "local_file" "demo" {
  filename = local.filename
  content  = local.welcome_message
}

resource "local_file" "newdemo" {
  filename = local.newfilename
  content  = local.newmessage
}

resource "local_file" "users" {
  for_each = toset(local.users)

  filename = "${each.key}.txt"

  content = "Welcome ${each.key}"
}