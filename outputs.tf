output "resource_group_ids" {
  description = "IDs of the created Resource Groups"
  value       = { for k, v in azurerm_resource_group.rg : k => v.id }
}

output "vnet_ids" {
  description = "IDs of the created Virtual Networks"
  value       = { for k, v in azurerm_virtual_network.vnet : k => v.id }
}

output "subnet_ids" {
  description = "IDs of the created Subnets"
  value       = { for k, v in azurerm_subnet.subnet : k => v.id }
}

output "storage_account_ids" {
  description = "IDs of the created Storage Accounts"
  value       = { for k, v in azurerm_storage_account.sa : k => v.id }
}

output "storage_account_primary_endpoints" {
  description = "Primary Blob Endpoints of the Storage Accounts"
  value       = { for k, v in azurerm_storage_account.sa : k => v.primary_blob_endpoint }
}
