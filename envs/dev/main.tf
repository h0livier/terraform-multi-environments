module "prod_project" {
  source = "./../../src"

  resource_group = {
    name     = "dev-rg"
    location = "West Europe"
  }
}