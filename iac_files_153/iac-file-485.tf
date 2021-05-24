resource "google_storage_bucket_iam_member" "allowed" {
  bucket = "test"
  role   = "roles/storage.admin"
  member = "user:jane@example.com"
}

resource "google_storage_bucket_iam_binding" "allowed" {

  bucket = "test"
  role   = "roles/storage.admin"
  members = [
    "user:jane@example.com",
  ]
}

resource "google_storage_bucket_iam_binding" "allowed_2" {

  bucket = "test"
  role   = "roles/storage.admin"
  members = [
    "user:jane@example.com",
    "user:another@example.com",
  ]
}


resource "google_storage_bucket_iam_member" "denied" {

  bucket = "test"
  role   = "roles/storage.admin"
  member = "allUsers"
}

resource "google_storage_bucket_iam_member" "denied_2" {

  bucket = "test"
  role   = "roles/storage.admin"
  member = "allAuthenticatedUsers"
}

resource "google_storage_bucket_iam_binding" "denied" {

  bucket = "test"
  role   = "roles/storage.admin"
  members = [
    "allUsers",
  ]
}

resource "google_storage_bucket_iam_binding" "denied_2" {

  bucket = "test"
  role   = "roles/storage.admin"
  members = [
    "allAuthenticatedUsers",
  ]
}

resource "google_storage_bucket_iam_binding" "denied_3" {
  bucket = "test"

  role = "roles/storage.admin"
  members = [
    "user:emailaddress",
    "allAuthenticatedUsers",
  ]
}

resource "google_storage_bucket_iam_binding" "denied_4" {

  bucket = "test"
  role   = "roles/storage.admin"
  members = [
    "allUsers",
    "user:emailaddress",
    "allAuthenticatedUsers",
  ]
}
