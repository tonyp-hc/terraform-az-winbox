terraform {
  required_version = ">= 0.11.1"
}

variable "location" {
  description = "Azure location in which to create resources"
  default = "East US"
}

variable "prefix" {
  default = "ttp-demo-ado"
}

module "network" {
  source              = "Azure/network/azurerm"
  version             = "2.0.0"
  location            = var.location
  resource_group_name = "${var.prefix}-rg"
}
