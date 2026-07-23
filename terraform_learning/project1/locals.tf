locals {
  filename = "${var.app_name}-${var.environment}.txt"

  welcome_message = "Welcome to ${var.app_name}"
}


locals {
  newfilename = "${upper(var.name)}-${var.environment}.txt"

  newmessage = var.environment == "prod"? "Welcome to Production": "Welcome to Development"
}

locals {
  users = [
    "Alice",
    "Bob",
    "Charlie"
  ]
}