resource "azurerm_app_service" "allowed" {
  name                = "example-app-service"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxx"

}

resource "azurerm_app_service" "allowed_2" {
  name                = "example-app-service"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxx"

  site_config {
  }
}

resource "azurerm_app_service" "allowed_3" {
  name                = "example-app-service"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxx"

  site_config {
    php_version = "7.4"
  }
}

resource "azurerm_app_service" "denied" {
  name                = "example-app-service"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxx"

  site_config {
    php_version = "7.3"
  }
}

resource "azurerm_app_service" "denied_2" {
  name                = "example-app-service"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxx"

  site_config {
    php_version = "7.0"
  }
}
