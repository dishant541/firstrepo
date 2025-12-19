resource "azurerm_public_ip" "pip" {

for_each=var.pip

  name                = each.value.pip-name
  resource_group_name = each.value.rg-name
  location            = each.value.location
  allocation_method   = each.value.allocation_method
}