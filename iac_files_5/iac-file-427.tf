resource "google_dns_managed_zone" "allowed" {
  name        = "peering-zone"
  dns_name    = "services.example.com."
  description = "Example private DNS Service Directory zone"

  visibility = "private"
}

resource "google_dns_managed_zone" "allowed_2" {
  name        = "peering-zone"
  dns_name    = "services.example.com."
  description = "Example private DNS Service Directory zone"

  visibility = "private"

  dnssec_config {
    state = "on"
  }
}

resource "google_dns_managed_zone" "allowed_3" {
  name        = "peering-zone"
  dns_name    = "services.example.com."
  description = "Example private DNS Service Directory zone"

  visibility = "private"

  dnssec_config {
    state = "on"
    default_key_specs {
      algorithm = "ecdsap256sha256"
    }
  }
}

resource "google_dns_managed_zone" "denied" {
  name        = "peering-zone"
  dns_name    = "services.example.com."
  description = "Example private DNS Service Directory zone"

  visibility = "private"

  dnssec_config {
    state = "on"
    default_key_specs {
      algorithm = "rsasha1"
    }
  }
}
