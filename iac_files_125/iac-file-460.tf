resource "google_container_node_pool" "allowed" {
  name       = "my-node-pool"
  location   = "us-central1"
  cluster    = "test"
  node_count = 1
  management {
    auto_upgrade = true
  }
}

resource "google_container_node_pool" "denied" {
  name       = "my-node-pool"
  location   = "us-central1"
  cluster    = "test"
  node_count = 1

}

resource "google_container_node_pool" "denied_2" {
  name       = "my-node-pool"
  location   = "us-central1"
  cluster    = "test"
  node_count = 1

  management {
  }
}

resource "google_container_node_pool" "denied_3" {
  name       = "my-node-pool"
  location   = "us-central1"
  cluster    = "test"
  node_count = 1

  management {
    auto_upgrade = false
  }
}
