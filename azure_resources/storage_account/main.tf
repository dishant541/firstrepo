resource "azurerm_storage_account" "strg" {

    for_each = var.rohit
  name                     = each.value.storage-name
  resource_group_name      = each.value.rg-name
  location                 = each.value.strg-location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}