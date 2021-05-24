resource "azurerm_managed_disk" "allowed" {
  name                 = "acctestmd"
  location             = "West US 2"
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"
  encryption_settings {
    enabled = true
  }
}

# azure encrypts all disks at rest by default with platform-managed keys
# https://docs.microsoft.com/en-us/azure/virtual-machines/disk-encryption
resource "azurerm_managed_disk" "allowed_2" {
  name                 = "acctestmd"
  location             = "West US 2"
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"
}
