resource "google_container_cluster" "denied" {
  name     = "my-node-pool"
  location = "us-central1"

  node_config {
    workload_metadata_config {
      node_metadata = "EXPOSE"
    }

    preemptible  = true
    machine_type = "e2-medium"

    service_account = "test@email.com"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

}

resource "google_container_cluster" "denied_2" {
  name     = "my-node-pool"
  location = "us-central1"

  node_config {
    workload_metadata_config {
      node_metadata = "SECURE"
    }
    preemptible  = true
    machine_type = "e2-medium"

    service_account = "test@email.com"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

}


resource "google_container_cluster" "denied_3" {
  name     = "my-node-pool"
  location = "us-central1"

  node_config {
    preemptible  = true
    machine_type = "e2-medium"

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.

    service_account = "test@email.com"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
