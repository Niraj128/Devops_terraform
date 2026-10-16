
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0.0"

    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-shashi2"
    storage_account_name = "shashistorage189"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg1" {
  name     = "rg-shashi2"
  location = "centralindia"
}