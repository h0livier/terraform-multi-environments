module "prod_project" {
  source = "./../../src"

  resource_group = {
    name     = "prod-rg"
    location = "West Europe"
  }
}