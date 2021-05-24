resource "google_container_cluster" "allowed" {
  name     = "my-gke-cluster"
  location = "us-central1"
  pod_security_policy_config {
    enabled = true
  }
}
