resource "google_sql_database_instance" "allowed" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks {
        value = "192.168.0.0/24"
      }
    }
  }
}

resource "google_sql_database_instance" "allowed_2" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks {
        value = "192.168.0.0/24"
      }
      authorized_networks {
        value = "192.168.1.0/24"
      }
    }
  }
}

resource "google_compute_network" "private_network" {
  name                    = "l7lb-test-network"
  auto_create_subnetworks = false
}

resource "google_sql_database_instance" "allowed_3" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
    ip_configuration {
      private_network = google_compute_network.private_network.id
    }
  }
}

resource "google_sql_database_instance" "denied" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks {
        value = "0.0.0.0/0"
      }
    }
  }
}

resource "google_sql_database_instance" "denied_2" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks {
        value = "192.168.1.0/24"
      }
      authorized_networks {
        value = "0.0.0.0/0"
      }
    }
  }
}

resource "google_sql_database_instance" "denied_3" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks {
        value = "0.0.0.0/0"
      }
      authorized_networks {
        value = "192.168.1.0/24"
      }
      authorized_networks {
        value = "0.0.0.0/0"
      }
    }
  }
}
