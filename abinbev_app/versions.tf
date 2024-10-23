terraform {

  backend "azurerm" {
    resource_group_name  = "dummy-rg"
    storage_account_name = "dummysaab"
    container_name       = "abappterraformstate"
    key                  = "abinbev_app.tfstate"
  }

  required_version = ">= 1.3, < 2"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3, < 4"
    }
  }
}