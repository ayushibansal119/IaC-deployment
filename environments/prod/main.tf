terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.62.1"
    }
  }
}

provider "azurerm" {
  features {}
}

module "rg" {
    source = "../../modules/rg"
    rg_name = var.rg_name
    location = var.location
}