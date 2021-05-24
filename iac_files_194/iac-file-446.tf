resource "aws_elasticsearch_domain" "allowed" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  cluster_config {
    instance_type = "t2.micro.elasticsearch"
  }
  node_to_node_encryption {
    enabled = true
  }
}
