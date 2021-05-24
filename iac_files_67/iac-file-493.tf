resource "google_compute_firewall" "denied" {
  name      = "test-firewall"
  network   = "test"
  direction = "EGRESS"
  destination_ranges = [
    "0.0.0.0/0"
  ]
  allow {
    protocol = "ICMP"
  }
}
