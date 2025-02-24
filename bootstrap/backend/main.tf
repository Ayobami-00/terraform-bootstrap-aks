
module "aks_resource_group" {
  source                  = "./modules/aks/compute/aks_resource_group"
  aks_resource_group_name = var.aks_resource_group_name
  aks_location            = var.aks_location
}


module "storage_account" {
  source                  = "./modules/aks/storage/storage_account" 
  storage_account_name    = var.storage_account_name
  resource_group_name     = module.aks_resource_group.aks_resource_group_name
  location                = var.aks_location
  account_tier            = "Standard"
  account_replication_type = "LRS"
}

module "storage_container" {
  source                  = "./modules/aks/storage/storage_container"
  storage_account_id      = module.storage_account.storage_account_id
  container_name          = var.container_name
}
