resource "aws_iam_user_policy_attachment" "denied" {
  user       = "test"
  policy_arn = "arn:aws:iam::123456789012:root"
}

resource "aws_iam_user_policy" "denied" {
  name   = "test"
  user   = "test"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "denied" {
  name       = "test"
  policy_arn = "arn:aws:iam::123456789012:root"
  users      = ["some_user"]
}
