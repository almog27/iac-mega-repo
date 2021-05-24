resource "azurerm_storage_account" "allowed" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"


  account_kind = "BlobStorage"
}

resource "azurerm_storage_account" "allowed_2" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  account_kind = "BlockBlobStorage"
}

resource "azurerm_storage_account" "allowed_3" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  account_kind = "FileStorage"
}

resource "azurerm_storage_account" "allowed_4" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  queue_properties {
    logging {
      write   = false
      delete  = false
      version = false
      read    = true
    }
  }
}

resource "azurerm_storage_account" "denied" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  queue_properties {
  }
}

resource "azurerm_storage_account" "denied_2" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  queue_properties {
    logging {
      version = false
      write   = false
      delete  = false
      read    = false
    }
  }
}
