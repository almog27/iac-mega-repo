resource "azurerm_postgresql_configuration" "allowed" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = "test"

  name  = "log_retention_days"
  value = 4
}

resource "azurerm_postgresql_configuration" "allowed_2" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = "test"

  name  = "not_log_checkpoint"
  value = 20
}

resource "azurerm_postgresql_configuration" "denied" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = "test"

  name  = "log_retention_days"
  value = 0
}

resource "azurerm_postgresql_configuration" "denied_2" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = "test"

  name  = "log_retention_days"
  value = 3
}
