output "disk_name" {
  description = "Managed Disk name"
  value       = azurerm_managed_disk.disk.name
}

output "disk_size" {
  description = "Managed disk size"
  value       = azurerm_managed_disk.disk.disk_size_gb
}
output "disk_id" {
  description = "Resource ID of the created Azure Managed Disk"
  value       = azurerm_managed_disk.disk.id
}
