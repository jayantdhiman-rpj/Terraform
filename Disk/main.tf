data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azurerm_managed_disk" "disk" {
  name                 = var.disk_name
  location             = data.azurerm_resource_group.rg.location
  resource_group_name  = data.azurerm_resource_group.rg.name
  storage_account_type = var.storage_account_type
  create_option        = "Empty"
  disk_size         = azurerm_managed_disk.disk.disk_size
}
