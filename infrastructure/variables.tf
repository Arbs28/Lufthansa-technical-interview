
locals {
  public_subnet_name  = "snet_dbx_public"
  private_subnet_name = "snet_dbx_private"
}

variable "azure_location" {
  description = "Azure region display name"
  type        = string
  default     = "Germany West Central"
}

variable "rg_name" {
  description = "Resource Group name"
  type        = string
  default     = "rg_dbx_lufthansa"
}

variable "vnet_name" {
  description = "VNet name"
  type        = string
  default     = "vnet_dbx"
}

variable "address_space" {
  description = "VNet address space"
  type        = list(string)
  default     = ["10.10.0.0/16"]
}

variable "public_subnet_prefix" {
  description = "CIDR for public subnet"
  type        = string
  default     = "10.10.1.0/24"
}

variable "private_subnet_prefix" {
  description = "CIDR for private subnet"
  type        = string
  default     = "10.10.2.0/24"
}

variable "workspace_name" {
  description = "Databricks workspace name"
  type        = string
  default     = "dbw_lufthansa_gwc"
}

variable "storage_account_name" {
  description = "Prefix for storage account (lowercase letters/numbers, 3-11 chars)"
  type        = string
  default     = "lufthansagwc7109ej"
}

