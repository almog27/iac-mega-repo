resource "azurerm_data_lake_store" "denied" {
  name                = "consumptiondatalake"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  encryption_state    = "Disabled"
}
