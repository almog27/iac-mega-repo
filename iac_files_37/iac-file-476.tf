resource "google_container_cluster" "allowed" {
  name     = "marcellus-wallace"
  location = "us-central1-a"
}

resource "google_container_cluster" "allowed_2" {
  name     = "marcellus-wallace"
  location = "us-central1-a"
  node_config {
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}
