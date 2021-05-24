resource "azurerm_security_center_contact" "allowed" {
  email = "contact@example.com"

  alert_notifications = true
  alerts_to_admins    = true

  phone = "012345"
}

resource "azurerm_security_center_contact" "denied" {
  email = "contact@example.com"

  alert_notifications = true
  alerts_to_admins    = true
}
