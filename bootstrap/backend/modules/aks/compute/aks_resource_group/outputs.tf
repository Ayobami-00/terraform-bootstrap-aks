output "aks_resource_group_id" {
  description = "The ID of the resource group"
  value       = azurerm_resource_group.rg.id
}


output "aks_resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.rg.name
}


