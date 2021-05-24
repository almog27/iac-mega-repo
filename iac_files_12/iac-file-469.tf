resource "google_container_cluster" "allowed_default" {
  name     = "my-gke-cluster"
  location = "us-central1"
}

resource "google_container_cluster" "allowed_stackdriver" {
  name            = "my-gke-cluster"
  location        = "us-central1"
  logging_service = "logging.googleapis.com/kubernetes"
}

resource "google_container_cluster" "allowed_legacy" {
  name            = "my-gke-cluster"
  location        = "us-central1"
  logging_service = "logging.googleapis.com"
}
