terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.33.0"
    }
  }
required_version = ">= 1.2.0"

  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatestoragejenk"
    container_name       = "tfstate"
    key                  = "jenkins-vm.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
}