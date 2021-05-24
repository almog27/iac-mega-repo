resource "azurerm_storage_container" "allowed" {
  name                 = "vhds"
  storage_account_name = "test"

  container_access_type = "private"
}

resource "azurerm_storage_container" "allowed_2" {
  name                 = "vhds"
  storage_account_name = "test"

}

resource "azurerm_storage_container" "denied" {
  name                 = "vhds"
  storage_account_name = "test"

  container_access_type = "blob"
}

resource "azurerm_storage_container" "denied_2" {
  name                 = "vhds"
  storage_account_name = "test"

  container_access_type = "container"
}
