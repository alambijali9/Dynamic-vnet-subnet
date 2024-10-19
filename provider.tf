terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.6.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "ba401a11-90e2-46b7-b288-c5c413dd44b7"

}