resource "aws_ecr_repository" "allowed" {
  name                 = "test"
  image_tag_mutability = "IMMUTABLE"
}

resource "aws_ecr_repository" "denied" {

  name                 = "test"
  image_tag_mutability = "MUTABLE"
}

resource "aws_ecr_repository" "denied_2" {

  name = "test"
}
