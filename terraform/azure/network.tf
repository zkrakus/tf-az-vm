resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.project}-${var.env}"
  address_space       = [var.vnet_cidr]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  tags = {
    project = var.project
    env     = var.env
  }
}

resource "azurerm_subnet" "subnet" {
  name                 = "subnet-${var.project}-${var.env}"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_cidrs
}