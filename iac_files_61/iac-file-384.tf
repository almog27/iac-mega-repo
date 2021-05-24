resource "azurerm_security_center_subscription_pricing" "allowed" {
  tier = "Standard"
}

resource "azurerm_security_center_subscription_pricing" "denied" {
  tier = "Free"
}
