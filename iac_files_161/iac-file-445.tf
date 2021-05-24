resource "aws_elasticsearch_domain" "denied" {
  domain_name           = "example"
  elasticsearch_version = "1.5"
  cluster_config {
    instance_type = "t2.micro.elasticsearch"
  }
}

resource "aws_elasticsearch_domain" "denied_2" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  cluster_config {
    instance_type = "t2.micro.elasticsearch"
  }

  node_to_node_encryption {
    enabled = false
  }
}


