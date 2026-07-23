terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "this" {
  filename = var.filename
  content  = var.content
}