module "dev" {
  source = "./modules/file"

  filename = "dev.txt"
  content  = "Development"
}

module "test" {
  source = "./modules/file"

  filename = "test.txt"
  content  = "Testing"
}

module "prod" {
  source = "./modules/file"

  filename = "prod.txt"
  content  = "Production"
}