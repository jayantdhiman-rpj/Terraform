variable "subscription_id" {
  description = "Azure subscription ID containing the VM."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing the existing VM."
  type        = string
}

variable "vm_name" {
  description = "Name of the existing Azure VM."
  type        = string
}

variable "vm_size" {
  description = "Desired Azure VM SKU."
  type        = string

  validation {
    condition     = startswith(var.vm_size, "Standard_")
    error_message = "The VM size must be a valid Azure Standard SKU, such as Standard_D4s_v5."
  }
}
