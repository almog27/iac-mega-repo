resource "azurerm_monitor_log_profile" "allowed" {
  name = "default"

  locations = [
    "westus",
    "global",
  ]

  retention_policy {
    enabled = true
    days    = 7
  }

  categories = [
    "Action",
    "Delete",
    "Write"
  ]
}

resource "azurerm_monitor_log_profile" "denied" {
  name = "default"

  locations = [
    "westus",
    "global",
  ]

  retention_policy {
    enabled = true
    days    = 7
  }

  categories = [
    "Action",
  ]
}

resource "azurerm_monitor_log_profile" "denied_2" {
  name = "default"

  locations = [
    "westus",
    "global",
  ]

  retention_policy {
    enabled = true
    days    = 7
  }

  categories = [
    "Action",
    "Delete",
  ]
}

resource "azurerm_monitor_log_profile" "denied_3" {
  name = "default"

  locations = [
    "westus",
    "global",
  ]

  retention_policy {
    enabled = true
    days    = 7
  }

  categories = [
    "Write",
  ]
}
