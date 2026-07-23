terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "message" {

  filename = "message.txt"

  content = "Current Workspace: ${terraform.workspace}"

}