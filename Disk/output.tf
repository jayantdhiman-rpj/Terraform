output "disk_name" {
  description = "Managed Disk name"
  value       = azurerm_managed_disk.name
}

output "disk_size" {
  description = "Managed disk size"
  value       = azurerm_managed_disk.size
}
