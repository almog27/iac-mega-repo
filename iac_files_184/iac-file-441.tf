resource "aws_elasticsearch_domain" "allowed" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  domain_endpoint_options {
    enforce_https = true
  }
}
