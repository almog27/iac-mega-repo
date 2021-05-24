resource "azurerm_storage_account" "example" {
  name                = "acctestsa"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  account_tier              = "Standard"
  account_kind              = "StorageV2"
  account_replication_type  = "LRS"
  enable_https_traffic_only = true
}

resource "azurerm_network_security_group" "example" {
  name                = "acctestnsg"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_network_watcher_flow_log" "allowed" {
  network_watcher_name      = "test"
  resource_group_name       = azurerm_resource_group.example.name
  network_security_group_id = azurerm_network_security_group.example.id
  storage_account_id        = azurerm_storage_account.example.id
  enabled                   = true

  retention_policy {
    enabled = true
    days    = 90
  }
}

resource "azurerm_network_watcher_flow_log" "allowed_2" {
  network_watcher_name = "test"
  resource_group_name  = azurerm_resource_group.example.name

  network_security_group_id = azurerm_network_security_group.example.id
  storage_account_id        = azurerm_storage_account.example.id
  enabled                   = true


  retention_policy {
    enabled = true
    days    = 91
  }
}

resource "azurerm_network_watcher_flow_log" "denied" {
  network_watcher_name = "test"
  resource_group_name  = azurerm_resource_group.example.name

  network_security_group_id = azurerm_network_security_group.example.id
  storage_account_id        = azurerm_storage_account.example.id
  enabled                   = true


  retention_policy {
    enabled = false
    days    = 90
  }
}

resource "azurerm_network_watcher_flow_log" "denied_2" {
  network_watcher_name      = "test"
  resource_group_name       = azurerm_resource_group.example.name
  network_security_group_id = azurerm_network_security_group.example.id
  storage_account_id        = azurerm_storage_account.example.id
  enabled                   = true

  retention_policy {
    enabled = true
    days    = 0
  }
}

resource "azurerm_network_watcher_flow_log" "denied_3" {
  network_watcher_name      = "test"
  resource_group_name       = azurerm_resource_group.example.name
  network_security_group_id = azurerm_network_security_group.example.id
  storage_account_id        = azurerm_storage_account.example.id
  enabled                   = true

  retention_policy {
    enabled = true
    days    = 89
  }
}
