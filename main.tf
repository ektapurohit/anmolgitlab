resource "azurerm_resource_group" "tr_rg" {
  name     = var.rg_name
  location = var.region
  
}

resource "azurerm_storage_account" "tr_storage_account" {
  name                     = var.storage_name
  resource_group_name      = var.rg_name
  location                 = var.region
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
    ms-resource-usage = "azure-cloud-shell"
  }
}
