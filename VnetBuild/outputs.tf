

output "virtual_network_name" {
  description = "Virtual Network Name"
  value       = azurerm_virtual_network.vnet.name
}

output "virtual_network_id" {
  description = "Virtual Network Resource ID"
  value       = azurerm_virtual_network.vnet.id
}

output "virtual_network_address_space" {
  description = "Virtual Network Address Space"
  value       = azurerm_virtual_network.vnet.address_space
}

output "subnet_name" {
  description = "Subnet Name"
  value       = azurerm_subnet.subnet.name
}

output "subnet_id" {
  description = "Subnet Resource ID"
  value       = azurerm_subnet.subnet.id
}
