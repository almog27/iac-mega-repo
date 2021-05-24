resource "google_container_cluster" "allowed" {
  name     = "my-gke-cluster"
  location = "us-central1"
  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }
}

