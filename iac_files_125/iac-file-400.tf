resource "azurerm_virtual_machine" "denied" {
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

    admin_password = "test"
  }
}

resource "azurerm_virtual_machine" "denied_2" {
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
    lock_passwd: false
    passwd: $6$j212wezy$7H/1LT4f9/N3wpgNunhsIqtMj62OKiS3nyNwuizouQc3u7MbYCarYeAHWYPYb2FT.lbioDm2RrkJPb9BZMN1O/
password: testing
CUSTOM
  }
}

resource "azurerm_virtual_machine" "denied_3" {
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
write_files:
    - path: "/etc/profile.env"
      content: |
        export
AZURE_CONNECTION_STRING="BlobEndpoint=https://cloudconfigdeleteme.blob.core.windows.net/;QueueEndpoint=https://cloudconfigdeleteme.queue.core.windows.net/;FileEndpoint=https://cloudconfigdeleteme.file.core.windows.net/;TableEndpoint=https://cloudconfigdeleteme.table.core.windows.net/;SharedAccessSignature=sv=2019-12-12&ss=bfqt&srt=sco&sp=rwdlacupx&se=2020-11-19T17:27:35Z&st=2020-11-19T09:27:35Z&spr=https,http&sig=c8MBs5cBrMo1ImXEj5V47KjiWs8yKy4iRIyku%2F%2FnNGw%3D"
CUSTOM
  }
}

resource "azurerm_virtual_machine" "denied_4" {
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
    custom_data    = <<CUSTOM
#cloud-config
write_files:
    - path: "/etc/profile.env"
      content: |
        export
AZURE_SAS_TOKEN="?sv=2019-12-12&ss=bfqt&srt=sco&sp=rwdlacupx&se=2020-11-19T17:27:35Z&st=2020-11-19T09:27:35Z&spr=https,http&sig=c8MBs5cBrMo1ImXEj5V47KjiWs8yKy4iRIyku%2F%2FnNGw%3D"
CUSTOM
  }
}

resource "azurerm_linux_virtual_machine" "denied_5" {
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
CiAgICAgICAgICBjb250ZW50OiB8CiAgICAgICAgICAgICAgICAgIGV4cG9ydAogICAgICAgICAg
ICAgICAgICBBWlVSRV9TQVNfVE9LRU49Ij9zdj0yMDE5LTEyLTEyJnNzPWJmcXQmc3J0PXNjbyZz
cD1yd2RsYWN1cHgmc2U9MjAyMC0xMS0xOVQxNzoyNzozNVomc3Q9MjAyMC0xMS0xOVQwOToyNzoz
NVomc3ByPWh0dHBzLGh0dHAmc2lnPWM4TUJzNWNCck1vMUltWEVqNVY0N0tqaVdzOHlLeTRpUkl5
a3UlMkYlMkZuTkd3JTNEIgoK
CUSTOM
}
