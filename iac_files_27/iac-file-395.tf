resource "azurerm_synapse_firewall_rule" "allowed" {
  name                 = "AllowAll"
  synapse_workspace_id = "/subscriptions/291bba3f-e0a5-47bc-a099-3bdcb2a50a05/resourcegroups/291bba3f-e0a5-47bc-a099-3bdcb2a50a05/providers/Microsoft.Synapse/workspaces/test"
  start_ip_address     = "1.1.1.1"
  end_ip_address       = "255.255.255.255"
}
