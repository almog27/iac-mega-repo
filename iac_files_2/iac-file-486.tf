resource "google_compute_network" "private_network" {
  name = "private-network"
}


resource "google_sql_database_instance" "allowed" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
    ip_configuration {
      ipv4_enabled = false
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
      private_network = google_compute_network.private_network.id
    }
  }
}

resource "google_sql_database_instance" "allowed_3" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database_instance" "denied" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
    ip_configuration {
      ipv4_enabled = true
    }
  }
}
