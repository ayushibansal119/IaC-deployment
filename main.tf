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
    source = "./modules/rg"
    rg_name = var.rg_name
    location = var.location
}

module "vnet" {
  source = "./modules/network"
  vnet_name = var.vnet_name
  rg_name = module.rg.rg_name
  location = module.rg.location
  vnet_add_space = var.vnet_add_space
  subnet_name = var.subnet_name
  subnet_add_prefix = var.subnet_add_prefix
}