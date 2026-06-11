output "rg_id" {
  description = "ID of the Azure Resource Group."
  value       = azurerm_resource_group.main.id
}

output "sa_blob_endpoint" {
  description = "Primary blob service endpoint of the Azure Storage Account."
  value       = azurerm_storage_account.main.primary_blob_endpoint
}

output "vnet_id" {
  description = "ID of the Azure Virtual Network."
  value       = azurerm_virtual_network.main.id
}