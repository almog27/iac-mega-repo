resource "google_project_iam_binding" "allowed" {
  project = "your-project-id"
  role    = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_bigquery_dataset_iam_binding" "allowed" {

  dataset_id = "your-project-id"
  role       = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_bigquery_table_iam_binding" "allowed" {
  dataset_id = "test"
  table_id   = "test"
  project    = "your-project-id"
  role       = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_bigtable_instance_iam_binding" "allowed" {
  instance = "your-project-id"
  role     = "roles/editor"

  members = [
    "group:test@example.com",
  ]
}

resource "google_billing_account_iam_binding" "allowed" {
  billing_account_id = "your-project-id"
  role               = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_binary_authorization_attestor_iam_binding" "allowed" {
  attestor = "your-project-id"
  role     = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_cloud_run_service_iam_binding" "allowed" {
  service = "your-project-id"
  role    = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_cloudfunctions_function_iam_binding" "allowed" {
  cloud_function = "your-project-id"
  role           = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_compute_disk_iam_binding" "allowed" {
  name = "your-project-id"
  role = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_compute_image_iam_binding" "allowed" {
  image = "your-project-id"
  role  = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_compute_instance_iam_binding" "allowed" {
  instance_name = "your-project-id"
  role          = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_compute_region_disk_iam_binding" "allowed" {
  name = "your-project-id"
  role = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_compute_subnetwork_iam_binding" "allowed" {
  subnetwork = "test"
  role       = "admin"

  members = [
    "group:test@example.com",
  ]
}

resource "google_data_catalog_entry_group_iam_binding" "allowed" {
  entry_group = "your-project-id"
  role        = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_dataproc_cluster_iam_binding" "allowed" {
  cluster = "your-project-id"
  role    = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_dataproc_job_iam_binding" "allowed" {
  job_id = "your-project-id"
  role   = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_endpoints_service_iam_binding" "allowed" {
  service_name = "your-project-id"
  role         = "roles/editor"

  members = [
    "group:test@example.com",
  ]
}

resource "google_folder_iam_binding" "allowed" {
  folder = "your-project-id"
  role   = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_healthcare_dataset_iam_binding" "allowed" {
  dataset_id = "your-project-id"
  role       = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_healthcare_dicom_store_iam_binding" "allowed" {

  dicom_store_id = "your-project-id"
  role           = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_healthcare_fhir_store_iam_binding" "allowed" {
  fhir_store_id = "test"
  role          = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_healthcare_hl7_v2_store_iam_binding" "allowed" {
  hl7_v2_store_id = "test"
  role            = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_iap_app_engine_service_iam_binding" "allowed" {
  service = "test"
  app_id  = "your-project-id"
  role    = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_iap_app_engine_version_iam_binding" "allowed" {

  app_id     = "test"
  service    = "test"
  version_id = "your-project-id"
  role       = "roles/editor"

  members = [
    "group:test@example.com",
  ]
}

resource "google_iap_tunnel_instance_iam_binding" "allowed" {
  instance = "your-project-id"
  role     = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_iap_web_backend_service_iam_binding" "allowed" {
  web_backend_service = "test"
  role                = "admin"

  members = [
    "group:test@example.com",
  ]
}

resource "google_iap_web_iam_binding" "allowed" {
  project = "your-project-id"
  role    = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_iap_web_type_app_engine_iam_binding" "allowed" {
  app_id = "your-project-id"
  role   = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_iap_web_type_compute_iam_binding" "allowed" {
  project = "your-project-id"
  role    = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_kms_crypto_key_iam_binding" "allowed" {
  crypto_key_id = "your-project-id"
  role          = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_kms_key_ring_iam_binding" "allowed" {
  key_ring_id = "your-project-id"
  role        = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_organization_iam_binding" "allowed" {
  org_id = "your-project-id"
  role   = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_project_iam_binding" "allowed_2" {
  project = "your-project-id"
  role    = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_pubsub_subscription_iam_binding" "allowed" {
  subscription = "test"
  role         = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_pubsub_topic_iam_binding" "allowed" {
  topic = "your-project-id"
  role  = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_runtimeconfig_config_iam_binding" "allowed" {
  config = "your-project-id"
  role   = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_secret_manager_secret_iam_binding" "allowed" {
  secret_id = "test"
  role      = "admin"

  members = [
    "group:test@example.com",
  ]
}

resource "google_service_account" "sa" {
  account_id   = "my-service-account"
  display_name = "A service account that only Jane can use"
}


resource "google_service_account_iam_binding" "allowed" {
  service_account_id = google_service_account.sa.name
  role               = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_sourcerepo_repository_iam_binding" "allowed" {
  repository = "your-project-id"
  role       = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_spanner_database_iam_binding" "allowed" {
  database = "test"
  instance = "your-project-id"
  role     = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_spanner_instance_iam_binding" "allowed" {
  instance = "your-project-id"
  role     = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}

resource "google_storage_bucket_iam_binding" "allowed" {
  bucket = "your-project-id"
  role   = "roles/editor"
  members = [
    "group:test@example.com",
  ]
}
