variable "storage_account_name" {
  type = string
}

variable "storage_account_tier" {
  type    = string
  default = "Standard"
}

variable "storage_replication_type" {
  type    = string
  default = "LRS"
}

variable "storage_public_access" {
  type    = bool
  default = false
}

variable "environment" {
  type    = string
  default = "dev"
}
