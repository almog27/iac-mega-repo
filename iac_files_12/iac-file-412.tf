resource "google_compute_project_metadata" "denied" {
  metadata = {
    "enable-oslogin" = false
  }
}

resource "google_compute_project_metadata" "denied_2" {
  metadata = {
  }
}

resource "google_compute_project_metadata" "allowed" {
  metadata = {
    "enable-oslogin" = true
  }
}

resource "google_compute_project_metadata_item" "denied" {
  key   = "enable-oslogin"
  value = false
}

resource "google_compute_project_metadata_item" "allowed" {
  key   = "enable-oslogin"
  value = true
}

resource "google_compute_project_metadata_item" "allowed_2" {
  key   = "some_value"
  value = false
}
