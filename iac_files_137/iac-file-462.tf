// By default any IP address is allowed if correct credentials are presented
// The use of authorized-networks is additional layer which can restrict 
// access based on client's IP address in addition to existing authorization
// controls. https://cloud.google.com/kubernetes-engine/docs/how-to/authorized-networks
// empty master_authorized_networks_config{} denies any access from outside Google 
// Cloud ip ranges

resource "google_container_cluster" "allowed" {
  name     = "my-gke-cluster"
  location = "us-central1"
}

resource "google_container_cluster" "allowed_2" {
  name     = "my-gke-cluster"
  location = "us-central1"
  master_authorized_networks_config {
  }
}

resource "google_container_cluster" "allowed_3" {
  name     = "my-gke-cluster"
  location = "us-central1"
  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = "192.168.0.0/24"
    }
    cidr_blocks {
      cidr_block = "192.0.0.0/16"
    }
  }
}

resource "google_container_cluster" "denied" {
  name     = "my-gke-cluster"
  location = "us-central1"
  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = "0.0.0.0/0"
    }
  }
}

resource "google_container_cluster" "denied_2" {
  name     = "my-gke-cluster"
  location = "us-central1"
  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = "0.0.0.0/0"
    }
    cidr_blocks {
      cidr_block = "172.16.0.0/16"
    }
  }
}

resource "google_container_cluster" "denied_3" {
  name     = "my-gke-cluster"
  location = "us-central1"
  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = "172.16.0.0/16"
    }
    cidr_blocks {
      cidr_block = "0.0.0.0/0"
    }
  }
}

resource "google_container_cluster" "denied_4" {
  name     = "my-gke-cluster"
  location = "us-central1"
  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = "0.0.0.0/0"
    }
    cidr_blocks {
      cidr_block = "172.16.0.0/16"
    }
    cidr_blocks {
      cidr_block = "0.0.0.0/0"
    }
  }
}
