terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "> 3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "1-a9102e8d-playground-sandbox"
    storage_account_name = "terrastoragelab"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}