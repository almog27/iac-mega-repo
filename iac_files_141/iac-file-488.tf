resource "google_app_engine_firewall_rule" "allowed" {
  project      = "test"
  priority     = 1000
  action       = "DENY"
  source_range = "*"
}
