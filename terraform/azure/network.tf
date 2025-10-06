resource "azurerm_virtual_network" "demo_vnet" {
  name                = "vnet-demo"
  address_space       = [var.vnet_cidr] //["10.0.0.0/16"]
  location            = azurerm_resource_group.demo_rg.location
  resource_group_name = azurerm_resource_group.demo_rg.name

  tags = {
    env = "demo"
  }
}

resource "azurerm_subnet" "demo_subnet" {
  name                 = "subnet-demo"
  resource_group_name  = azurerm_resource_group.demo_rg.name
  virtual_network_name = azurerm_virtual_network.demo_vnet.name
  address_prefixes     = var.subnet_cidrs //["10.0.1.0/24"]
}