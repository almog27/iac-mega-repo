resource "azurerm_storage_account" "allow" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}

resource "azurerm_storage_account" "allow_2" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  network_rules {
    default_action = "Deny"
  }
}

resource "azurerm_storage_account" "deny" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  network_rules {
    default_action = "Allow"
  }
}

resource "azurerm_storage_account_network_rules" "allow" {
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_name = azurerm_storage_account.allow.name

  default_action = "Deny"
}

resource "azurerm_storage_account_network_rules" "deny" {
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_name = azurerm_storage_account.allow.name

  default_action = "Allow"
}
