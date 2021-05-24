resource "aws_iam_role" "denied" {
  name = "test_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": "*",
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role" "denied_2" {
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
    },
    {
      "Action": "sts:AssumeRole",
      "Principal": "*",
      "Effect": "Allow",
      "Sid": ""
    }

  ]
}
EOF
}

data "aws_iam_policy_document" "denied" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}

data "aws_iam_policy_document" "denied_2" {
  statement {
    actions = ["s3:create"]
    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }

  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}

data "aws_iam_policy_document" "denied_3" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "*"
      identifiers = ["something", "*"]
    }
  }
}
