resource "aws_elasticsearch_domain" "denied" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

}

resource "aws_elasticsearch_domain" "denied_2" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  domain_endpoint_options {
    enforce_https = false
  }
}
