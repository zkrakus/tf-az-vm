resource "azurerm_resource_group" "demo_rg" {
  name     = "rg-${var.env}"
  location = var.location

  tags = {
    env     = var.env
    owner   = "zeus.krakus"
    purpose = "terraform-lab"
  }
}