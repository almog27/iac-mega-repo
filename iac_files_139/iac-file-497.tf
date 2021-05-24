resource "google_project_iam_binding" "denied" {
  project = "your-project-id"
  role    = "roles/iam.serviceAccountUser"

  members = [
    "user:jane@example.com",
  ]
}

resource "google_project_iam_binding" "allowed" {
  project = "your-project-id"
  role    = "roles/editor"

  members = [
    "user:jane@example.com",
  ]
}

resource "google_project_iam_member" "allowed" {
  project = "your-project-id"
  role    = "roles/editor"
  member  = "user:jane@example.com"
}

resource "google_project_iam_member" "denied" {
  project = "your-project-id"
  role    = "roles/iam.serviceAccountTokenCreator"
  member  = "user:jane@example.com"
}
