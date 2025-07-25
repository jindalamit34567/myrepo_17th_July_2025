resource "azurerm_resource_group" "my-rg" {
  name     = "jindal_rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "mystg" {
  name                     = "tillustorage"
  resource_group_name      = azurerm_resource_group.mystg.name
  location                 = azurerm_resource_group.mystg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

} 