resource "aws_s3_bucket_public_access_block" "denied" {
  bucket = "test"
}

resource "aws_s3_bucket_public_access_block" "denied_2" {
  bucket            = "test"
  block_public_acls = false
}
