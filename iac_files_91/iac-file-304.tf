resource "aws_s3_bucket" "allowed" {
  bucket = "test"
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "IPAllow",
      "Effect": "Deny",
      "Principal": "*",
      "Action": "s3:*"
    }
  ]
}
POLICY
}

resource "aws_s3_bucket" "allowed_2" {
  bucket = "test"
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "IPAllow",
      "Effect": "Allow",
      "Principal": {
        "AWS": ["arn:aws:iam::111122223333:root"]
      },
      "Action": "s3:*"
    }
  ]
}
POLICY
}

resource "aws_s3_bucket_policy" "allowed" {
  bucket = "test"
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "IPAllow",
      "Effect": "Allow",
      "Principal": {
        "AWS": ["arn:aws:iam::111122223333:root"]
      },
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::my_tf_test_bucket/*"
    }
  ]
}
POLICY
}

resource "aws_s3_bucket" "allowed_3" {
  bucket = "test"
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "IPAllow",
      "Effect": "Allow",
      "Principal": {
        "AWS": ["arn:aws:iam::111122223333:root"]
      },
      "Action": "s3:*"
    },
    {
      "Sid": "IPAllows",
      "Effect": "Deny",
      "Principal": "*",
      "Action": "s3:*"
    }

  ]
}
POLICY
}
