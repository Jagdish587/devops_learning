terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "hello" {
  filename = "/home/jagdish/terraform_learn/example_1/sample.txt"
  content  = "hello, i am jagdish tirumala\n"
}
