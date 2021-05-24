resource "google_compute_ssl_policy" "allowed" {
  name    = "production-ssl-policy"
  profile = "MODERN"
}

resource "google_compute_ssl_policy" "allowed_2" {
  name    = "production-ssl-policy"
  profile = "RESTRICTED"
}

resource "google_compute_ssl_policy" "denied" {
  name    = "production-ssl-policy"
  profile = "COMPATIBLE"
}

resource "google_compute_ssl_policy" "denied_2" {
  name = "production-ssl-policy"
}

resource "google_compute_ssl_policy" "denied_3" {
  name = "production-ssl-policy"
}

resource "google_compute_ssl_policy" "allowed_3" {
  name            = "production-ssl-policy"
  profile         = "CUSTOM"
  custom_features = []
}

resource "google_compute_ssl_policy" "allowed_4" {
  name            = "production-ssl-policy"
  profile         = "CUSTOM"
  custom_features = ["TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"]
}

resource "google_compute_ssl_policy" "denied_4" {
  name            = "production-ssl-policy"
  profile         = "CUSTOM"
  custom_features = ["TLS_RSA_WITH_AES_128_GCM_SHA256"]
}

resource "google_compute_ssl_policy" "denied_5" {
  name            = "production-ssl-policy"
  profile         = "CUSTOM"
  custom_features = ["TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256"]
}

resource "google_compute_ssl_policy" "denied_6" {
  name            = "production-ssl-policy"
  profile         = "CUSTOM"
  custom_features = ["TLS_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256"]
}
