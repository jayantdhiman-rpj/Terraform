variable "location" {
  type        = string
  description = "Azure region"
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
