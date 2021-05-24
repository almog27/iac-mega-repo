resource "aws_elasticsearch_domain" "denied" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  domain_endpoint_options {
    enforce_https       = true
    tls_security_policy = "Policy-Min-TLS-1-0-2019-07"
  }
}

resource "aws_elasticsearch_domain" "denied_2" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  domain_endpoint_options {
    enforce_https = true
  }
}
