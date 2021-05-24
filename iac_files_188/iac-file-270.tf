resource "aws_eks_cluster" "allowed" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:user"
  vpc_config {
    subnet_ids = ["test"]
  }
  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
}

resource "aws_eks_cluster" "allowed_2" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:user"
  vpc_config {
    subnet_ids = ["test"]
  }

  enabled_cluster_log_types = ["controllerManager", "scheduler", "api", "audit", "authenticator"]
}

resource "aws_eks_cluster" "denied" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:user"
  vpc_config {
    subnet_ids = ["test"]
  }

}

resource "aws_eks_cluster" "denied_2" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:user"
  vpc_config {
    subnet_ids = ["test"]
  }

  enabled_cluster_log_types = ["controllerManager", "scheduler"]
}


resource "aws_eks_cluster" "denied_3" {
  name     = "example"
  role_arn = "arn:aws:iam::123456789012:user"
  vpc_config {
    subnet_ids = ["test"]
  }

  enabled_cluster_log_types = ["controllerManager", "scheduler", "api"]
}
