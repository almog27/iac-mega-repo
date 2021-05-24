resource "aws_iam_role" "allowed" {
  name = "test_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role" "allowed_2" {
  name = "test_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": "*",
      "Effect": "Deny",
      "Sid": ""
    }
  ]
}
EOF
}

data "aws_iam_policy_document" "allowed" {
  statement {
    actions = ["s3:create"]
    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}


data "aws_iam_policy_document" "allowed_2" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
  }
}

data "aws_iam_policy_document" "allowed_3" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "*"
      identifiers = ["some_identifier"]
    }
  }
}


data "aws_iam_policy_document" "allowed_4" {
  statement {
    actions = ["sts:AssumeRole"]
    effect  = "Deny"
    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}
