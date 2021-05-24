resource "aws_s3_bucket_public_access_block" "allowed" {
  bucket            = "test"
  block_public_acls = true
}
