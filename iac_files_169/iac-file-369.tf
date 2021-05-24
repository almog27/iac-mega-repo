resource "azurerm_postgresql_server" "denied" {
  name                = "postgresql-server-1"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku_name            = "B_Gen5_2"
  version             = "9.5"

  ssl_enforcement_enabled = false
}
