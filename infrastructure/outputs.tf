output "resource_group" {
  value = azurerm_resource_group.this.name
}

output "vnet_id" {
  value = azurerm_virtual_network.this.id
}

output "public_subnet_id" {
  value = azurerm_subnet.public.id
}

output "private_subnet_id" {
  value = azurerm_subnet.private.id
}

output "storage_account_name" {
  value = azurerm_storage_account.this.name
}

output "unity_catalog_container" {
  value = azurerm_storage_container.unity_catalog.name
}

output "databricks_workspace_url" {
  description = "Databricks workspace portal URL"
  value       = azurerm_databricks_workspace.this.workspace_url
}