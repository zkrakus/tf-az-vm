resource "azurerm_public_ip" "demo_pip" {
  name                = "pip-${var.env}"
  location            = azurerm_resource_group.demo_rg.location
  resource_group_name = azurerm_resource_group.demo_rg.name
  allocation_method   = "Dynamic"

  tags = {
    env = var.env
  }
}

resource "azurerm_network_interface" "demo_nic" {
  name                = "nic-${var.env}"
  location            = azurerm_resource_group.demo_rg.location
  resource_group_name = azurerm_resource_group.demo_rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.demo_subnet.id
    private_ip_address_allocation = "Dynamic"

    # Attach the optional public IP
    public_ip_address_id = azurerm_public_ip.demo_pip.id
  }

  tags = {
    env = var.env
  }
}