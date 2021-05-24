resource "azurerm_key_vault" "allowed" {
  purge_protection_enabled = true
  soft_delete_enabled      = true

  name                        = "examplekeyvault"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = "090556DA-D4FA-764F-A9F1-63614EDA019A"

  sku_name = "standard"
}

resource "azurerm_key_vault" "denied" {
  purge_protection_enabled = true

  name                        = "examplekeyvault"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = "090556DA-D4FA-764F-A9F1-63614EDA019A"

  sku_name = "standard"

}

resource "azurerm_key_vault" "denied_2" {
  soft_delete_enabled = true

  name                        = "examplekeyvault"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = "090556DA-D4FA-764F-A9F1-63614EDA019A"

  sku_name = "standard"

}

resource "azurerm_key_vault" "denied_3" {
  purge_protection_enabled = false

  name                        = "examplekeyvault"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = "090556DA-D4FA-764F-A9F1-63614EDA019A"

  sku_name = "standard"

}

resource "azurerm_key_vault" "denied_4" {
  soft_delete_enabled = false

  name                        = "examplekeyvault"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = "090556DA-D4FA-764F-A9F1-63614EDA019A"

  sku_name = "standard"

}

resource "azurerm_key_vault" "denied_5" {
  purge_protection_enabled = false
  soft_delete_enabled      = false

  name                        = "examplekeyvault"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = "090556DA-D4FA-764F-A9F1-63614EDA019A"

  sku_name = "standard"

}

resource "azurerm_key_vault" "denied_6" {
  name                        = "examplekeyvault"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = "090556DA-D4FA-764F-A9F1-63614EDA019A"

  sku_name = "standard"

}

resource "azurerm_key_vault" "denied_7" {
  purge_protection_enabled = true
  soft_delete_enabled      = false

  name                        = "examplekeyvault"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = "090556DA-D4FA-764F-A9F1-63614EDA019A"

  sku_name = "standard"

}

resource "azurerm_key_vault" "denied_8" {
  purge_protection_enabled = false
  soft_delete_enabled      = true

  name                        = "examplekeyvault"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = "090556DA-D4FA-764F-A9F1-63614EDA019A"

  sku_name = "standard"

}
