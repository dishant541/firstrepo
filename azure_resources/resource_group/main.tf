resource "azurerm_resource_group" "rg" {

for_each =var.aman

  name     = each.value.rg-name
  location = each.value.rg-location
}