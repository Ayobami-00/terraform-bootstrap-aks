resource "azurerm_storage_container" "storage_container" {
  name                 = var.container_name
  storage_account_id   = var.storage_account_id
  container_access_type = "private"
}
