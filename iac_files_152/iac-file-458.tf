resource "google_container_cluster" "allowed" {
  name     = "my-gke-cluster"
  location = "us-central1"
  network_policy {
    enabled = true
  }
}

resource "google_container_cluster" "denied" {
  name     = "my-gke-cluster"
  location = "us-central1"
}

resource "google_container_cluster" "denied_2" {
  name     = "my-gke-cluster"
  location = "us-central1"
  network_policy {
    enabled = false
  }
}

