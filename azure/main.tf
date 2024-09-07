
# Terraform block to specify the required provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0" # Specify your Azure provider version
    }
  }
}

# Configure the Azure provider (uses Azure CLI authentication)
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }

  subscription_id = "85daa62a-9a76-45aa-9006-003c8bfb49c7" # not exact agin
}



# Fetch an existing resource group data (replace with your resource group name)
data "azurerm_resource_group" "example" {
  name = "NetworkWatcherRG" # Change this to your resource group name
}

# # Define the resource group to manage
# resource "azurerm_resource_group" "example" {
#   name     = "NetworkWatcherRG" # Ensure this matches the existing resource group name
#   location = "eastus"           # Use the correct location
# }

