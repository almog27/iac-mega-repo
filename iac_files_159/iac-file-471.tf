resource "google_container_cluster" "denied" {
  name               = "my-gke-cluster"
  location           = "us-central1"
  enable_legacy_abac = true
}
