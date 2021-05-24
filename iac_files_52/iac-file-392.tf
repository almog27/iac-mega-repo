resource "azurerm_storage_account" "allowed" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  network_rules {
    default_action = "Allow"
  }
}

resource "azurerm_storage_account" "allowed_2" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  network_rules {
    default_action = "Deny"
    bypass         = ["AzureServices"]
  }
}

resource "azurerm_storage_account" "allowed_3" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  network_rules {
    default_action = "Deny"
    bypass         = ["Metrics", "AzureServices"]
  }
}

resource "azurerm_storage_account" "denied" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  network_rules {
    default_action = "Deny"
  }
}

resource "azurerm_storage_account" "denied_2" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  network_rules {
    default_action = "Deny"
    bypass         = []
  }
}

resource "azurerm_storage_account" "denied_3" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  network_rules {
    default_action = "Deny"
    bypass         = ["None"]
  }
}

resource "azurerm_storage_account" "denied_4" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  network_rules {
    default_action = "Deny"
    bypass         = ["Logging", "Metrics"]
  }
}


resource "azurerm_storage_account" "denied_5" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  network_rules {
    default_action = "Deny"
    bypass         = ["Metrics"]
  }
}

resource "azurerm_storage_account_network_rules" "allowed" {
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_name = azurerm_storage_account.allowed.name

  default_action = "Allow"
}

resource "azurerm_storage_account_network_rules" "allowed_2" {
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_name = azurerm_storage_account.allowed.name

  default_action = "Deny"
  bypass         = ["AzureServices"]
}

resource "azurerm_storage_account_network_rules" "denied" {
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_name = azurerm_storage_account.allowed.name

  default_action = "Deny"
  bypass         = ["Metrics"]
}

resource "azurerm_storage_account_network_rules" "denied_2" {
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_name = azurerm_storage_account.allowed.name

  default_action = "Deny"
}


