resource "google_compute_firewall" "allowed" {
  name    = "test-firewall"
  network = "test"
  destination_ranges = [
    "192.168.0.0/16"
  ]
  allow {
    protocol = "icmp"
  }
}

resource "google_compute_firewall" "allowed_2" {
  name    = "test-firewall"
  network = "test"

  direction = "EGRESS"
  destination_ranges = [
    "192.168.0.0/16"
  ]

  allow {
    protocol = "icmp"
  }
}
