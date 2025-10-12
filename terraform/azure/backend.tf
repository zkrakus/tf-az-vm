terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatezeus"     # globally unique, your persistent store
    container_name       = "tfstate"
    key                  = "demovm-zeus.tfstate"
  }
}