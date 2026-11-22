
data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}


resource "azurerm_storage_account" "stgaccount" {
  name                     = var.storage_account_name
  location                 = data.azurerm_resource_group.rg.location
  resource_group_name      = data.azurerm_resource_group.rg.name
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_replication_type
}



