terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "ohaymngmtproject"
    storage_account_name = "ohaymngmtstorage"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }

}

provider "azurerm" {
  features {}
}