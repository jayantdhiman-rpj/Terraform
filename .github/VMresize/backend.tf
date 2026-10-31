terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "sttfstateunique12345"
    container_name       = "tfstate"
    key                  = "existing-vm-resize.tfstate"

    use_azuread_auth = true
  }
}
