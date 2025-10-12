resource "azurerm_public_ip" "pip" {
  name                = "pip-${var.project}-${var.env}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  allocation_method = "Static"  
  sku               = "Standard"

  tags = {
    project = var.project
    env     = var.env
  }
}

resource "azurerm_network_interface" "nic" {
  name                = "nic-${var.project}-${var.env}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip.id
  }

  tags = {
    project = var.project
    env     = var.env
  }
}