resource "google_bigquery_dataset" "allowed" {
  dataset_id                  = "example_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000
}

resource "google_bigquery_dataset" "allowed_2" {

  dataset_id                  = "example_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000
  access {
    role          = "OWNER"
    user_by_email = "test@email.com"
  }
}

resource "google_bigquery_dataset" "allowed_3" {
  dataset_id                  = "example_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000
  access {
    role          = "OWNER"
    special_group = "projectOwners"
  }
}

resource "google_bigquery_dataset" "denied" {
  dataset_id                  = "example_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000
  access {
    role          = "OWNER"
    special_group = "allAuthenticatedUsers"
  }
}

resource "google_bigquery_dataset" "denied_2" {
  dataset_id                  = "example_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000
  access {
    role          = "OWNER"
    special_group = "allUsers"
  }
}

resource "google_bigquery_dataset" "denied_3" {
  dataset_id                  = "example_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000
  access {
    role          = "OWNER"
    special_group = "allUsers"
  }

  access {
    role          = "OWNER"
    special_group = "projectOwners"
  }
}

resource "google_bigquery_dataset" "denied_4" {
  dataset_id                  = "example_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000
  access {
    role          = "OWNER"
    special_group = "projectOwners"
  }

  access {
    role          = "OWNER"
    special_group = "allUsers"
  }
}

resource "google_bigquery_dataset" "denied_5" {
  dataset_id                  = "example_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000
  access {
    role          = "OWNER"
    special_group = "allAuthenticatedUsers"
  }

  access {
    role          = "OWNER"
    special_group = "projectOwners"
  }

  access {
    role          = "OWNER"
    special_group = "allUsers"
  }
}
