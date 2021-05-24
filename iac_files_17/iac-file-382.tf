resource "azurerm_security_center_contact" "allowed" {
  email               = "contact@example.com"
  alerts_to_admins    = true
  alert_notifications = true
}

resource "azurerm_security_center_contact" "denied" {
  email               = "contact@example.com"
  alerts_to_admins    = true
  alert_notifications = false
}
