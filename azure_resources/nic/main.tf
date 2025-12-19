resource "azurerm_network_interface" "nic" {

    for_each=var.nic
  name                = each.value.nic-name
  location            = each.value.location
  resource_group_name = each.value.rg-name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.data-subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.example2.id
  }
}

data "azurerm_subnet" "data-subnet"{
  name                 = "subnet5"
  virtual_network_name = "productionvnet5"
  resource_group_name  = "yoyo5"
}
data "azurerm_public_ip" "example2" {
  name                = "publicip5"
  resource_group_name = "yoyo5"
}