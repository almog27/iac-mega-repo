resource "google_app_engine_firewall_rule" "denied" {
  project      = "test"
  priority     = 1000
  action       = "ALLOW"
  source_range = "*"
}
