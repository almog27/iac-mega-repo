data "aws_iam_policy_document" "allowed" {
  statement {
    effect    = "Deny"
    actions   = ["*"]
    resources = ["*"]
  }
}

data "aws_iam_policy_document" "allowed_2" {

  statement {
    actions = [
      "s3:ListAllMyBuckets",
      "s3:GetBucketLocation",
    ]
    resources = [
      "arn:aws:s3:::*",
    ]
  }

  statement {
    actions = [
      "s3:ListAllMyBuckets",
      "s3:GetBucketLocation",
    ]
    resources = [
      "arn:aws:s3:::*",
    ]
  }
}

data "aws_iam_policy_document" "allowed_3" {
  statement {
    effect    = "Allow"
    actions   = ["*"]
    resources = ["*"]
  }

  statement {
    effect    = "Deny"
    actions   = ["*"]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "allowed" {
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": ["*"],
      "Effect": "Deny",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_policy" "allowed_2" {
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": ["*"],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": ["*"],
      "Effect": "Deny",
      "Resource": "*"
    }
  ]
}
EOF
}


resource "aws_iam_group_policy" "allowed" {
  group  = "test"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": ["*"
      ],
      "Effect": "Deny",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "allowed" {
  role   = "arn:aws:iam::123456789012:user"
  policy = <<-EOF
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Action": ["*"
        ],
        "Effect": "Deny",
        "Resource": "*"
      }
    ]
  }
  EOF
}


resource "aws_iam_user_policy" "allowed" {
  name   = "test"
  user   = "test"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": ["*"
      ],
      "Effect": "Deny",
      "Resource": "*"
    }
  ]
}
EOF
}
