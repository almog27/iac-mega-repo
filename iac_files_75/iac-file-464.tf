resource "google_container_cluster" "allowed" {
  name     = "my-node-pool"
  location = "us-central1"
}

resource "google_container_cluster" "allowed_2" {
  name               = "my-node-pool"
  location           = "us-central1"
  monitoring_service = "monitoring.googleapis.com"
}

resource "google_container_cluster" "allowed_3" {
  name               = "my-node-pool"
  location           = "us-central1"
  monitoring_service = "monitoring.googleapis.com/kubernetes"
}

resource "google_container_cluster" "denied" {
  name               = "my-node-pool"
  location           = "us-central1"
  monitoring_service = "none"
}

