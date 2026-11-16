variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}


variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group"
}

variable "disk_name" {
  type = string
}

variable "disk_size" {
  type    = string
  default = ""
}

variable "storage_account_type" {
  description = "Azure Managed Disk Storage Account Type"
  type        = string
}
