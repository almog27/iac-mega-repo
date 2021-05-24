resource "google_storage_bucket" "allow" {
  name          = "image-store.com"
  location      = "EU"
  force_destroy = true
  encryption {
    default_kms_key_name = "dummy_key"
  }

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "deny_1" {
  name          = "image-store.com"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "deny_2" {
  name          = "image-store.com"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true
}
