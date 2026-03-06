module "prod_project" {
  source = "./../../src"

  resource_group = {
    name     = "ohay-prod-rg"
    location = "West Europe"
  }
}