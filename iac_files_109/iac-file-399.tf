resource "azurerm_virtual_machine" "allowed" {
  name                = "example-machine"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  vm_size             = "Standard_F2"

  network_interface_ids = [
    "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkInterfaces/test-nic",
  ]

  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "test"
    admin_username = "test"

    custom_data = <<CUSTOM
#cloud-config
users:
  - name: foobar
CUSTOM
  }
}

resource "azurerm_linux_virtual_machine" "allowed" {
  name                = "example-machine"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  size                = "Standard_F2"

  network_interface_ids = [
    "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkInterfaces/test-nic",
  ]


  admin_username = "OH_WHY_MICROSOFT"

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  custom_data = <<CUSTOM
I2Nsb3VkLWNvbmZpZwp3cml0ZV9maWxlczoKICAgIC0gcGF0aDogIi9ldGMvcHJvZmlsZS5lbnYi
CiAgICAgICAgICBjb250ZW50OiBleHBvcnQgTk9UX1NFQ1JFVD10ZXN0Cgo=
CUSTOM
}
