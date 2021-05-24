resource "azurerm_app_service" "allowed" {
  name                = "example-appserviceplan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxxx"
}

resource "azurerm_app_service" "allowed_2" {
  name                = "example-appserviceplan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxxx"

  site_config {
  }
}

resource "azurerm_app_service" "allowed_3" {
  name                = "example-appserviceplan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxxx"

  site_config {
    java_version = "11"
  }
}

resource "azurerm_app_service" "denied" {
  name                = "example-appserviceplan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxxx"

  site_config {
    java_version = "1.7"
  }
}

resource "azurerm_app_service" "denied_2" {
  name                = "example-appserviceplan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxxx"

  site_config {
    java_version = "1.8"
  }
}
