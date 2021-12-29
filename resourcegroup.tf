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

  subscription_id = "Free Trial"
  tenant_id       = "4b5dd814-2758-4f61-b67b-8125caf437fc"
  client_id       = "39ec3ceb-6677-40a1-9648-0513cedf99a8"
  client_secret   = "f1fa9441-4df1-467c-be02-0cc81290ba51"
}

# Create a resource group
resource "azurerm_resource_group" "test" {
  name     = "test-resources"
  location = "West Europe"
}

# Your code goes here