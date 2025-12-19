resource "azurerm_virtual_network" "vnet" {

    for_each= var.qwerty

  name                = each.value.vnet-name
  location            = each.value.vnet-location
  resource_group_name = each.value.rg-name
  address_space       = each.value.address_space
}