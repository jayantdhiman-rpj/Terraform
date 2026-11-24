variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Existing Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vnet_name" {
  description = "Existing VNet name"
  type        = string
}

variable "subnet_name" {
  description = "Existing subnet name"
  type        = string
}

variable "vm_name" {
  description = "Linux VM name"
  type        = string
}

variable "vm_size" {
  description = "Azure VM SKU"
  type        = string
  default     = "Standard_D2s_v5"
}

variable "admin_username" {
  description = "Linux administrator username"
  type        = string
  default     = "azureadmin"
}

variable "ssh_public_key" {
  description = "SSH public key"
  type        = string
  sensitive   = true
}

variable "os_disk_size_gb" {
  description = "OS disk size"
  type        = number
  default     = 64
}

