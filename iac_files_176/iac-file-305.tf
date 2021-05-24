resource "aws_s3_bucket" "denied" {
  bucket = "test"
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "IPAllow",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:*"
    }
  ]
}
POLICY
}

resource "aws_s3_bucket_policy" "denied" {
  bucket = "test"
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "IPAllow",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::my_tf_test_bucket/*"
    }
  ]
}
POLICY
}

resource "aws_s3_bucket_policy" "denied_2" {
  bucket = "test"
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "test",
      "Effect": "Allow",
      "Principal": "some_other",
      "Action": "*"
    },
    {
      "Sid": "IPAllow",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::my_tf_test_bucket/*"
    }
  ]
}
POLICY
}
