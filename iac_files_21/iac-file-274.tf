resource "aws_globalaccelerator_accelerator" "allowed" {
  name            = "Example"
  ip_address_type = "IPV4"
  enabled         = true
  attributes {
    flow_logs_enabled = true
  }
}

resource "aws_globalaccelerator_accelerator" "denied" {
  name            = "Example"
  ip_address_type = "IPV4"
  enabled         = true
  attributes {
    flow_logs_enabled = false
  }
}

resource "aws_globalaccelerator_accelerator" "denied_2" {
  name            = "Example"
  ip_address_type = "IPV4"
  enabled         = true
}
