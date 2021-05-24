resource "google_container_cluster" "allowed" {
  name     = "marcellus-wallace"
  location = "us-central1-a"
  private_cluster_config {
    enable_private_endpoint = true
  }
}

resource "google_container_cluster" "denied" {
  name     = "marcellus-wallace"
  location = "us-central1-a"
}

resource "google_container_cluster" "denied_2" {
  name     = "marcellus-wallace"
  location = "us-central1-a"
  private_cluster_config {
    enable_private_endpoint = false
  }
}
