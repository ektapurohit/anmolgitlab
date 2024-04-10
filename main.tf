resource "azurerm_resource_group" "tr_rg" {
  name     = "1-a9102e8d-playground-sandbox"
  location = "West US"
  
}

resource "azurerm_storage_account" "tr_storage_account" {
  name                     = "terrastoragelab"
  resource_group_name      = "1-a9102e8d-playground-sandbox"
  location                 = "West US"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
    ms-resource-usage = "azure-cloud-shell"
  }
}
