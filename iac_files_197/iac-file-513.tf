resource "google_kms_key_ring" "keyring" {
  name     = "keyring-example"
  location = "global"
}

resource "google_kms_crypto_key" "allowed" {
  name            = "crypto-key-example"
  key_ring        = google_kms_key_ring.keyring.id
  rotation_period = "100000s"

  lifecycle {
    prevent_destroy = true
  }
}

resource "google_kms_crypto_key" "denied" {
  name     = "crypto-key-example"
  key_ring = google_kms_key_ring.keyring.id

  lifecycle {
    prevent_destroy = true
  }
}

resource "google_kms_crypto_key" "allowed_2" {
  name            = "crypto-key-example"
  key_ring        = google_kms_key_ring.keyring.id
  rotation_period = "31536000s"

  lifecycle {
    prevent_destroy = true
  }
}

resource "google_kms_crypto_key" "denied_2" {
  name            = "crypto-key-example"
  key_ring        = google_kms_key_ring.keyring.id
  rotation_period = "31536001s"

  lifecycle {
    prevent_destroy = true
  }
}
