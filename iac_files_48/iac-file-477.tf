resource "google_container_cluster" "denied" {
  name     = "my-gke-cluster"
  location = "us-central1"
}

resource "google_container_cluster" "denied_2" {
  name     = "my-gke-cluster"
  location = "us-central1"
  pod_security_policy_config {
    enabled = false
  }
}
