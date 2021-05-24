resource "google_compute_subnetwork" "denied" {
  name          = "test-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  network       = "id-xxxx"
}
