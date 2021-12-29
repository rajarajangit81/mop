provider "azurerm" {
  subscription_id = var.subscription_id
  # Create a resource group
resource "azurerm_resource_group" "test" {
  name     = "test-resources"
  location = "West Europe"
}
}