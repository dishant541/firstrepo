resource "azurerm_subnet" "subnet" {

for_each= var.subu

  name                 = each.value.subnet-name
  resource_group_name  = each.value.rg-name
  virtual_network_name = each.value.vnet-name
  address_prefixes     = each.value.address_prefixes

#   delegation {
#     name = "delegation"

#     service_delegation {
#       name    = "Microsoft.ContainerInstance/containerGroups"
#       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
#     }
#   }
}