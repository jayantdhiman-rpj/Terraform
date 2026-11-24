output "vm_id" {
  description = "Azure VM resource ID"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_name" {
  description = "VM name"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "private_ip_address" {
  description = "VM private IP"
  value       = azurerm_network_interface.nic.private_ip_address
}