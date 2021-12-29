terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.46.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "<azure_subscription_id>"
  tenant_id       = "<azure_subscription_tenant_id>"
  client_id       = "<service_principal_appid>"
  client_secret   = "<service_principal_password>"
}

# Create a resource group
resource "azurerm_resource_group" "test" {
  name     = "test-resources"
  location = "West Europe"
}

# Your code goes here