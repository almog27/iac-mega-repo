resource "aws_cloudtrail" "allowed" {
  name                  = "tf-trail-foobar"
  s3_bucket_name        = "test"
  s3_key_prefix         = "prefix"
  is_multi_region_trail = true
}

resource "aws_cloudtrail" "denied" {
  name           = "tf-trail-foobar"
  s3_bucket_name = "test"
  s3_key_prefix  = "prefix"

}

resource "aws_cloudtrail" "denied_2" {
  name           = "tf-trail-foobar"
  s3_bucket_name = "test"
  s3_key_prefix  = "prefix"

  is_multi_region_trail = false
}
