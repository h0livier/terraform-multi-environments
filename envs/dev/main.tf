module "prod_project" {
  source = "./../../src"

  resource_group = {
    name     = "ohay-dev-rg"
    location = "West Europe"
  }
}