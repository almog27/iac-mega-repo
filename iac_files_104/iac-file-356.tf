resource "azurerm_mssql_server_security_alert_policy" "denied" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = "test"
  state               = "Enabled"
}

resource "azurerm_mssql_server_security_alert_policy" "denied_2" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = "test"
  state               = "Enabled"

  email_account_admins = false
}

resource "azurerm_mssql_server_security_alert_policy" "allowed" {
  resource_group_name = azurerm_resource_group.example.name
  server_name         = "test"
  state               = "Enabled"

  email_account_admins = true
}
