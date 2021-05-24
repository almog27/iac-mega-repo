resource "azurerm_app_service" "allowed" {
  name                = "example-app-service"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxx"

  site_config {
    dotnet_framework_version = "v5.0"
  }
}

resource "azurerm_app_service" "denied" {
  name                = "example-app-service"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxx"

  site_config {
    dotnet_framework_version = "v2.0"
  }
}

resource "azurerm_app_service" "denied_2" {
  name                = "example-app-service"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = "id-xxx"

  site_config {
    dotnet_framework_version = "v4.0"
  }
}
