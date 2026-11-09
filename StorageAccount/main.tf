
data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}


resource "azurerm_storage_account" "stgaccount" {
  name                = var.stg_name
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  account_tier        = var.account_tier
  account_replication_type = var.replication_type

  tags = {
    ManagedBy = "Terraform"
  }
}

