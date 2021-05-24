resource "google_container_cluster" "denied" {
  name     = "my-gke-cluster"
  location = "us-central1"
}

resource "google_container_cluster" "denied_2" {
  name     = "my-gke-cluster"
  location = "us-central1"
  master_auth {
    client_certificate_config {
      issue_client_certificate = true
    }
  }
}

resource "google_container_cluster" "denied_3" {
  name     = "my-gke-cluster"
  location = "us-central1"
  master_auth {
    client_certificate_config {
      issue_client_certificate = true
    }
  }
}
