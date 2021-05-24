resource "azurerm_firewall_application_rule_collection" "allowed" {
  name                = "testcollection"
  azure_firewall_name = "test"
  resource_group_name = azurerm_resource_group.example.name
  priority            = 100
  action              = "Allow"
  rule {
    name = "testrule"
    source_addresses = [
      "10.0.0.0/16",
    ]
    target_fqdns = [
      "*.google.com",
    ]
    protocol {
      port = "443"
      type = "Https"
    }
  }
}
