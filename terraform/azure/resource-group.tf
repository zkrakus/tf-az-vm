resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.project}-${var.env}"
  location = var.location

  tags = {
    project = var.project
    env     = var.env
    owner   = "zeus.krakus"
    purpose = "terraform-lab"
  }
}