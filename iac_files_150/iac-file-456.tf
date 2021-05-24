resource "google_container_cluster" "allowed" {
  name     = "my-gke-cluster"
  location = "us-central1"
  ip_allocation_policy {}
}

resource "google_container_cluster" "denied" {
  name     = "my-gke-cluster"
  location = "us-central1"
}

