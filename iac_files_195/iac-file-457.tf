resource "google_container_cluster" "allowed" {
  name     = "my-gke-cluster"
  location = "us-central1"
}

resource "google_container_cluster" "allowed_2" {
  name     = "my-gke-cluster"
  location = "us-central1"
  node_config {
  }
}

resource "google_container_cluster" "denied" {
  name     = "my-gke-cluster"
  location = "us-central1"
  node_config {
    image_type = "not-cos-image"
  }
}

