provider "azurerm" {
  subscription_id = "bfd6fa12-e23b-4cfb-8e8a-a0781abf779a"
  # Create a resource group
resource "azurerm_resource_group" "test" {
  name     = "test-resources"
  location = "West Europe"
}
}