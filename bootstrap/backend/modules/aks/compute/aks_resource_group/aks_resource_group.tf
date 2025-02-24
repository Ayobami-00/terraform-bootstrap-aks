resource "azurerm_resource_group" "rg" {
  name     = var.aks_resource_group_name
  location = var.aks_location
}
