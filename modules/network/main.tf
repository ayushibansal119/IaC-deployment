resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = var.vnet_add_space
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  address_prefixes     = var.subnet_add_prefix
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name
  depends_on = [
    azurerm_virtual_network.vnet
  ]
}