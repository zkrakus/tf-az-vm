resource "azurerm_linux_virtual_machine" "vm" {
  name                = "vm-${var.project}-${var.env}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  size                = "Standard_B1s" # 💸 cheapest burstable instance

  admin_username = "azureuser"

  network_interface_ids = [
    azurerm_network_interface.nic.id
  ]


  source_image_reference {
    publisher = "microsoft-dotnet"
    offer     = "dotnet-ubuntu-2204"
    sku       = "dotnet-ubuntu-2204"
    version   = "latest"
  }

  # Optional: use SSH key for login
  #   admin_ssh_key {
  #     username   = "azureuser"
  #     public_key = file("~/.ssh/id_rsa.pub") # make sure you have this locally
  #   }

  os_disk {
    name                 = "osdisk-${var.project}-${var.env}"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  tags = {
    project = var.project
    env     = var.env
  }
}
