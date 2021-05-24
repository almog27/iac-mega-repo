resource "azurerm_app_service" "denied" {
  name                = "example-appserviceplan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxxx"

}

resource "azurerm_app_service" "denied_2" {
  name                = "example-appserviceplan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxxx"

  client_cert_enabled = false
}

resource "azurerm_app_service" "allowed" {
  name                = "example-appserviceplan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxxx"

  client_cert_enabled = true
}

