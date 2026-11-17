variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}


variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group"
}

variable "disk_name" {
  description = "Azure Managed Disk Name"
  type = string
}

variable "disk_size_gb" {
  type    = number
  default = 4
  description = "Managed Disk Size in GB"
}

variable "storage_account_type" {
  description = "Azure Managed Disk Storage Account Type"
  type        = string
}
