resource "google_compute_firewall" "denied" {
  name    = "test-firewall"
  network = "test"
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }
  source_ranges = ["0.0.0.0/0"]
}
