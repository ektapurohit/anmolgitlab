variable "rg_name" {
  description = "Azure resource group name"
  type = string
}

variable "storage_name" {
  description = "Name of storage account"
  type        = string
}

variable "region" {
  description = "Region of Azure"
  type        = string
  default     = "West US"
}
