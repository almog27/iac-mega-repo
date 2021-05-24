resource "google_container_cluster" "allowed" {
  name     = "my-gke-cluster"
  location = "us-central1"
  resource_labels = {
    "some" = "label"
  }
}

resource "google_container_cluster" "denied" {
  name     = "my-gke-cluster"
  location = "us-central1"
}

