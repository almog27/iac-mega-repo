resource "azurerm_mysql_server" "denied" {
  name                = "example-mysqlserver"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku_name            = "B_Gen5_2"
  storage_mb          = 5120
  version             = "5.7"

  ssl_enforcement_enabled = false
}
