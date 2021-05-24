resource "azurerm_network_security_rule" "denied" {
  name                        = "test123"
  priority                    = 100
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  resource_group_name         = azurerm_resource_group.example.name
  network_security_group_name = "test"

  direction                  = "Outbound"
  access                     = "Allow"
  destination_address_prefix = "*"
}

resource "azurerm_network_security_rule" "denied_2" {
  name                        = "test123"
  priority                    = 100
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  resource_group_name         = azurerm_resource_group.example.name
  network_security_group_name = "test"

  direction                  = "Outbound"
  access                     = "Allow"
  destination_address_prefix = "0.0.0.0/0"
}

resource "azurerm_network_security_rule" "denied_3" {
  name                        = "test123"
  priority                    = 100
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  resource_group_name         = azurerm_resource_group.example.name
  network_security_group_name = "test"

  direction                  = "Outbound"
  access                     = "Allow"
  destination_address_prefix = "Internet"
}
