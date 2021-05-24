resource "azurerm_monitor_log_profile" "allowed" {
  name = "default"

  categories = [
    "Action",
    "Delete",
    "Write",
  ]

  locations = [
    "westus",
    "global",
  ]
  retention_policy {
    enabled = true
    days    = 365
  }
}

resource "azurerm_monitor_log_profile" "allowed_2" {
  name = "default"

  categories = [
    "Action",
    "Delete",
    "Write",
  ]

  locations = [
    "westus",
    "global",
  ]
  retention_policy {
    enabled = true
    days    = 366
  }
}

resource "azurerm_monitor_log_profile" "denied" {
  name = "default"

  categories = [
    "Action",
    "Delete",
    "Write",
  ]

  locations = [
    "westus",
    "global",
  ]
  retention_policy {
    enabled = false
    days    = 366
  }
}

resource "azurerm_monitor_log_profile" "denied_2" {
  name = "default"

  categories = [
    "Action",
    "Delete",
    "Write",
  ]

  locations = [
    "westus",
    "global",
  ]
  retention_policy {
    enabled = true
    days    = 354
  }
}

resource "azurerm_monitor_log_profile" "denied_3" {
  name = "default"

  categories = [
    "Action",
    "Delete",
    "Write",
  ]

  locations = [
    "westus",
    "global",
  ]
  retention_policy {
    enabled = true
    days    = 0
  }
}
