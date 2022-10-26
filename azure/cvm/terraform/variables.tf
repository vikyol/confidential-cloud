variable "resource_group_location" {
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  default     = "confidential"
  description = "The name of the resource group."
}

variable "cvm_size" {
    default = "Standard_DC2as_v5"
    description = "The size of the confidential VM"
}