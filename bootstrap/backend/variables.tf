
variable "aks_resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = ""
}

variable "aks_location" {
  description = "The location of the resource group"
  type        = string
  default     = ""
}


variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = ""
}


variable "subscription_id" {
  description = "The subscription ID for the Azure account"
  type        = string
  default     = ""
}

variable "container_name" {
  description = "The name of the storage container"
  type        = string
  default     = ""
}

