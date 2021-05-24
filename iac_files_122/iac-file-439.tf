resource "aws_elasticsearch_domain" "allowed" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  cluster_config {
    instance_type = "c5.large.elasticsearch"
  }
}

