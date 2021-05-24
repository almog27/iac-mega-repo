resource "aws_iam_policy_attachment" "allowed" {
  name       = "test"
  policy_arn = "arn:aws:iam::123456789012:root"
  groups     = ["some_user"]
}
