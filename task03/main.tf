locals {
  common_tags = {
    Creator = var.student_email
  }
}

resource "azurerm_resource_group" "main" {
  name     = var.rg_name
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "main" {
  name                     = var.storageaccount_name
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = local.common_tags
}

resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = var.vnet_address_space

  tags = local.common_tags
}

resource "azurerm_subnet" "frontend" {
  name                 = var.subnet1_name
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.subnet1_address_prefixes
}

resource "azurerm_subnet" "backend" {
  name                 = var.subnet2_name
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.subnet2_address_prefixes
}
