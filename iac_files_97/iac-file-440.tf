resource "aws_elasticsearch_domain" "allowed" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  cluster_config {
    instance_type = "r4.large.elasticsearch"
  }

  encrypt_at_rest {
    enabled = true
  }
}
