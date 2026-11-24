data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}


  resource "azurerm_network_interface" "nic" {
   name = var.nic_name
   resource_group_name = var.resource_group_name
   location            = data.azurerm_resource_group.rg.location
  }

  data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  }

  output "virtual_network_id" {
  value = data.azurerm_virtual_network.vnet.id
  }
  
  data "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.resource_group_name
  }

   output "subnet_id" {
   value = data.azurerm_subnet.subnet.id
   }
  
  resource "azurerm_network_interface" "niccard" {
  name                = var.nic_card_name
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    }
  }

  

  resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = var.resource_group_name
  location            = data.azurerm_resource_group.rg.location
  size                = var.vm_size

  network_interface_ids = [
    azurerm_network_interface.nic.id
  ]

   

  admin_username = var.admin_username
 
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = var.os_disk_size_gb
  }

  source_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "9-lvm-gen2"
    version   = "latest"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}