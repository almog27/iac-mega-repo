resource "google_container_cluster" "denied" {
  name     = "my-gke-cluster"
  location = "us-central1"
}

resource "google_container_cluster" "denied_2" {
  name                  = "my-gke-cluster"
  location              = "us-central1"
  enable_shielded_nodes = false
}
