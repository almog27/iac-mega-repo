resource "google_container_cluster" "denied" {
  name     = "marcellus-wallace"
  location = "us-central1-a"
  node_config {
    metadata = {
    }
  }
}

resource "google_container_cluster" "denied_2" {
  name     = "marcellus-wallace"
  location = "us-central1-a"
  node_config {
    metadata = {
      disable-legacy-endpoints = "false"
    }
  }
}
