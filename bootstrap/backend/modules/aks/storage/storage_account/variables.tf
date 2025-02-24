variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = ""
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = ""
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = ""
}


variable "account_tier" {
  description = "The tier of the storage account"
  type        = string
  default     = "Standard"
}


variable "account_replication_type" {
  description = "The replication type of the storage account"
  type        = string
  default     = "LRS"
}

