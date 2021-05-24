resource "azurerm_data_lake_store" "allowed" {
  name                = "consumptiondatalake"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
}


resource "azurerm_data_lake_store" "allowed_2" {
  name                = "consumptiondatalake"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  encryption_state    = "Enabled"
}
