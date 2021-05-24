resource "google_storage_bucket" "allowed" {
  name                        = "image-store.com"
  location                    = "EU"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "denied" {
  name                        = "image-store.com"
  location                    = "EU"
  uniform_bucket_level_access = false
}

resource "google_storage_bucket" "denied_2" {
  name     = "image-store.com"
  location = "EU"
}
