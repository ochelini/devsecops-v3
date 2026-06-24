terraform {
  backend "azurerm" {
    resource_group_name  = "devsecops-v3-rg"
    storage_account_name = "devsecopstfstate123"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
