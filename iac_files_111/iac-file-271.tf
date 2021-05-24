resource "aws_eks_cluster" "allowed" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:root"

  vpc_config {
    subnet_ids = ["id-xxx", "id-xxx2"]

    endpoint_public_access = false
  }
}

resource "aws_eks_cluster" "allowed_2" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:root"

  vpc_config {
    subnet_ids = ["id-xxx", "id-xxx2"]

    public_access_cidrs = ["192.168.1.0/24"]
  }
}

resource "aws_eks_cluster" "allowed_3" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:root"

  vpc_config {
    subnet_ids = ["id-xxx", "id-xxx2"]

    endpoint_public_access = true
    public_access_cidrs    = ["192.168.1.0/24"]
  }
}


