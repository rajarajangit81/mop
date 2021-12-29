
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.SUBSCRIPTION_ID
  client_id       = var.SP_CLIENT_ID
  client_secret   = var.SP_CLIENT_SECRET
  tenant_id       = var.SP_TENANT_ID
  version         = "=2.46.0" #Can be overide as you wish
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "test" {
  name     = "test-resources"
  location = "West Europe"
}
