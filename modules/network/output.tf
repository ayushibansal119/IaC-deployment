output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "vnet_add_space" {
  value = azurerm_virtual_network.vnet.address_space
}

output "subnet_id" {
    value = azurerm_subnet.subnet.id
}

output "subnet_name" {
  value = azurerm_subnet.subnet.name
}

output "subnet_add_prefix" {
  value = azurerm_subnet.subnet.address_prefixes
}