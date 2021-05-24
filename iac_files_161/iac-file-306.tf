resource "aws_s3_bucket_public_access_block" "allowed" {
  bucket                  = "test"
  restrict_public_buckets = true
}
