terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.24.0"
    #   subscription_id = "subscription id, if we have multiple subscriptons"
    }
  }
}

provider "azurerm" {
    features {
      
    }
}