resource "aws_eks_cluster" "encryption_disabled" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:root"

  vpc_config {
    subnet_ids = ["id-xxx", "id-xxx2"]
  }
}

resource "aws_eks_cluster" "encryption_enabled" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:root"

  vpc_config {
    subnet_ids = ["id-xxx", "id-xxx2"]
  }

  encryption_config {
    provider {
      key_arn = "arn:aws:iam::123456789012:root"
    }
    resources = ["secrets"]
  }
}
