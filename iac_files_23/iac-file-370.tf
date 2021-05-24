resource "azurerm_postgresql_configuration" "allowed" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = "test"

  name  = "connection_throttling"
  value = "on"
}

resource "azurerm_postgresql_configuration" "allowed_2" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = "test"

  name  = "not_connection_throttling"
  value = "on"
}

resource "azurerm_postgresql_configuration" "denied" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = "test"

  name  = "connection_throttling"
  value = "off"
}
