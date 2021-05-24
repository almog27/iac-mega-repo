resource "google_container_cluster" "allowed" {
  name     = "my-gke-cluster"
  location = "us-central1"
}

resource "google_container_cluster" "allowed_2" {
  name               = "my-gke-cluster"
  location           = "us-central1"
  enable_legacy_abac = false
}
