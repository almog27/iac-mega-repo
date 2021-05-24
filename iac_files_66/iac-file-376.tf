resource "azurerm_postgresql_configuration" "allowed" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = "test"

  name  = "log_duration"
  value = "on"
}

resource "azurerm_postgresql_configuration" "allowed_2" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = "test"

  name  = "not_log_checkpoint"
  value = "on"
}

resource "azurerm_postgresql_configuration" "denied" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = "test"

  name  = "log_duration"
  value = "off"
}
