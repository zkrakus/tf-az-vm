resource "azurerm_resource_group" "demo_rg" {
  name     = "rg-demo"
  location = var.location

  tags = {
    env     = "demo"
    owner   = "zeus.krakus"
    purpose = "terraform-lab"
  }
}