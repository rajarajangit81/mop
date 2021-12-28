
terraform {
  required_version = ">= v1.1.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" "test" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "test" {
  name     = "test-resources"
  location = "West Europe"
}