

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "vnet_add_space" {
  value = list
}

output "subnet_name" {
  value = azurerm_subnet.subnet.name
}

output "subnet_add_prefix" {
  value = list
}