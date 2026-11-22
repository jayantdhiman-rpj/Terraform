variable "resource_group_name" {
  description = "Name of the existing Azure Resource Group"
  type        = string
}

variable "disk_name" {
  description = "Name of the Azure Managed Disk"
  type        = string
}

variable "disk_size_gb" {
  description = "Size of the managed disk in GB"
  type        = number
  default     = 128
}

variable "storage_account_type" {
  description = "Storage SKU for the managed disk"
  type        = string
  default     = "Premium_LRS"

  validation {
    condition = contains([
      "Standard_LRS",
      "StandardSSD_LRS",
      "Premium_LRS",
      "PremiumV2_LRS",
      "UltraSSD_LRS"
    ], var.storage_account_type)

    error_message = "Invalid managed disk storage account type."
  }
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}