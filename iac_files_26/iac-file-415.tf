resource "aws_dax_cluster" "encryption_disabled" {
  cluster_name = "cluster-example"
  iam_role_arn = "arn:aws:iam::123456789012:root"
  node_type    = "dax.r4.large"

  replication_factor = 1
}

resource "aws_dax_cluster" "encryption_disabled_2" {
  cluster_name       = "cluster-example"
  iam_role_arn       = "arn:aws:iam::123456789012:root"
  node_type          = "dax.r4.large"
  replication_factor = 1

  server_side_encryption {
    enabled = false
  }
}


resource "aws_dax_cluster" "encryption_enabled" {
  cluster_name       = "cluster-example"
  iam_role_arn       = "arn:aws:iam::123456789012:root"
  node_type          = "dax.r4.large"
  replication_factor = 1

  server_side_encryption {
    enabled = true
  }
}
