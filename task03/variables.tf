variable "rg_name" {
  description = "Name of the Azure Resource Group."
  type        = string
}

variable "location" {
  description = "Azure region where all Azure resources will be created."
  type        = string
}

variable "storageaccount_name" {
  description = "Name of the Azure Storage Account."
  type        = string
}

variable "vnet_name" {
  description = "Name of the Azure Virtual Network."
  type        = string
}

variable "subnet1_name" {
  description = "Name of the first subnet."
  type        = string
}

variable "subnet2_name" {
  description = "Name of the second subnet."
  type        = string
}

variable "student_email" {
  description = "Student email used as the Creator tag value."
  type        = string
}

variable "vnet_address_space" {
  description = "Address space of the Azure Virtual Network."
  type        = list(string)
}

variable "subnet1_address_prefixes" {
  description = "Address prefixes of the first subnet."
  type        = list(string)
}

variable "subnet2_address_prefixes" {
  description = "Address prefixes of the second subnet."
  type        = list(string)
}