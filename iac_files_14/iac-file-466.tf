resource "google_project_iam_binding" "denied" {
  project = "your-project-id"
  role    = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_bigquery_dataset_iam_binding" "denied" {

  dataset_id = "your-project-id"
  role       = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_bigquery_table_iam_binding" "denied" {
  table_id   = "test"
  dataset_id = "your-project-id"
  role       = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_bigtable_instance_iam_binding" "denied" {
  instance = "your-project-id"
  role     = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_billing_account_iam_binding" "denied" {
  billing_account_id = "your-project-id"
  role               = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_binary_authorization_attestor_iam_binding" "denied" {
  attestor = "your-project-id"
  role     = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_cloud_run_service_iam_binding" "denied" {
  service = "test"
  role    = "admin"
  members = [
    "user:test@example.com",
  ]
}

resource "google_cloudfunctions_function_iam_binding" "denied" {
  cloud_function = "your-project-id"
  role           = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_compute_disk_iam_binding" "denied" {
  name = "your-project-id"
  role = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_compute_image_iam_binding" "denied" {
  image = "your-project-id"
  role  = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_compute_instance_iam_binding" "denied" {

  instance_name = "your-project-id"
  role          = "roles/editor"


  members = [
    "user:test@example.com",
  ]
}

resource "google_compute_region_disk_iam_binding" "denied" {

  name = "your-project-id"
  role = "admin"
  members = [
    "user:test@example.com",
  ]
}

resource "google_compute_subnetwork_iam_binding" "denied" {
  subnetwork = "test"
  role       = "admin"
  members = [
    "user:test@example.com",
  ]
}

resource "google_data_catalog_entry_group_iam_binding" "denied" {

  entry_group = "your-project-id"
  role        = "admin"
  members = [
    "user:test@example.com",
  ]
}

resource "google_dataproc_cluster_iam_binding" "denied" {
  cluster = "your-project-id"
  role    = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_dataproc_job_iam_binding" "denied" {
  job_id = "your-project-id"
  role   = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_endpoints_service_iam_binding" "denied" {
  service_name = "your-project-id"
  role         = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_folder_iam_binding" "denied" {
  folder = "your-project-id"
  role   = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_healthcare_dataset_iam_binding" "denied" {
  dataset_id = "your-project-id"
  role       = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_healthcare_dicom_store_iam_binding" "denied" {
  dicom_store_id = "your-project-id"
  role           = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_healthcare_fhir_store_iam_binding" "denied" {

  fhir_store_id = "test"
  role          = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_healthcare_hl7_v2_store_iam_binding" "denied" {
  hl7_v2_store_id = "test"
  role            = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_iap_app_engine_service_iam_binding" "denied" {
  service = "test"
  app_id  = "your-project-id"
  role    = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_iap_app_engine_version_iam_binding" "denied" {

  app_id     = "test"
  service    = "test"
  version_id = "your-project-id"
  role       = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_iap_tunnel_instance_iam_binding" "denied" {
  instance = "test"
  role     = "admin"
  members = [
    "user:test@example.com",
  ]
}

resource "google_iap_web_backend_service_iam_binding" "denied" {
  web_backend_service = "test"
  role                = "admin"
  members = [
    "user:test@example.com",
  ]
}

resource "google_iap_web_iam_binding" "denied" {
  role = "admin"

  members = [
    "user:test@example.com",
  ]
}

resource "google_iap_web_type_app_engine_iam_binding" "denied" {
  app_id = "your-project-id"
  role   = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_iap_web_type_compute_iam_binding" "denied" {
  role = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_kms_crypto_key_iam_binding" "denied" {
  crypto_key_id = "your-project-id"
  role          = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_kms_key_ring_iam_binding" "denied" {
  key_ring_id = "your-project-id"
  role        = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_organization_iam_binding" "denied" {
  org_id = "test"
  role   = "admin"
  members = [
    "user:test@example.com",
  ]
}

resource "google_pubsub_subscription_iam_binding" "denied" {
  subscription = "test"
  role         = "admin"
  members = [
    "user:test@example.com",
  ]
}

resource "google_pubsub_topic_iam_binding" "denied" {
  topic = "test"
  role  = "admin"

  members = [
    "user:test@example.com",
  ]
}

resource "google_runtimeconfig_config_iam_binding" "denied" {
  config = "your-project-id"
  role   = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_secret_manager_secret_iam_binding" "denied" {
  secret_id = "test"
  role      = "admin"
  members = [
    "user:test@example.com",
  ]
}

resource "google_service_account_iam_binding" "denied" {

  service_account_id = google_service_account.sa.name
  role               = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_sourcerepo_repository_iam_binding" "denied" {
  repository = "your-project-id"
  role       = "roles/editor"

  members = [
    "user:test@example.com",
  ]
}

resource "google_spanner_database_iam_binding" "denied" {
  database = "admin"
  instance = "admint"
  role     = "admin"
  members = [
    "user:test@example.com",
  ]
}

resource "google_spanner_instance_iam_binding" "denied" {
  instance = "test"
  role     = "admin"
  members = [
    "user:test@example.com",
  ]
}

resource "google_storage_bucket_iam_binding" "denied" {
  bucket = "test"
  role   = "ading"
  members = [
    "user:test@example.com",
  ]
}
