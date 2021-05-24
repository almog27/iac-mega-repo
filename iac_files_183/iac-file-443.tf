resource "aws_elasticsearch_domain" "denied" {
  domain_name           = "example"
  elasticsearch_version = "1.5"
  cluster_config {
    instance_type = "c5.large.elasticsearch"
  }
}

resource "aws_elasticsearch_domain" "denied_2" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  cluster_config {
    instance_type = "c5.large.elasticsearch"
  }

  encrypt_at_rest {
    enabled = false
  }
}


