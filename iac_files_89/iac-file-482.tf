resource "google_compute_subnetwork" "allowed" {
  name          = "test-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  network       = "id-xxxx"

  log_config {
    aggregation_interval = "INTERVAL_10_MIN"
    flow_sampling        = 0.5
    metadata             = "INCLUDE_ALL_METADATA"
  }
}
