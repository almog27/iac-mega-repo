resource "aws_eks_cluster" "denied" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:root"

  vpc_config {
    subnet_ids = ["id-xxx", "id-xxx2"]

  }
}

resource "aws_eks_cluster" "denied_2" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:root"

  vpc_config {
    subnet_ids = ["id-xxx", "id-xxx2"]

    endpoint_public_access = true
  }
}

resource "aws_eks_cluster" "denied_3" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:root"

  vpc_config {
    subnet_ids = ["id-xxx", "id-xxx2"]

    public_access_cidrs = ["0.0.0.0/0"]
  }
}

resource "aws_eks_cluster" "denied_4" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:root"

  vpc_config {
    subnet_ids = ["id-xxx", "id-xxx2"]

    endpoint_public_access = true
    public_access_cidrs    = ["0.0.0.0/0"]
  }
}
