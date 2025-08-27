terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

locals {
  resource_group_name = "rg-${var.project_name}-${var.environment}"
  tags = {
    Project     = var.project_name
    Environment = var.environment
  }
}

resource "azurerm_resource_group" "this" {
  name     = local.resource_group_name
  location = var.location
  tags     = local.tags
}
