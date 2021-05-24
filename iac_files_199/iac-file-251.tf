resource "aws_cloudtrail" "allowed" {
  name                          = "tf-trail-foobar"
  s3_bucket_name                = "test"
  s3_key_prefix                 = "prefix"
  include_global_service_events = false
  cloud_watch_logs_group_arn    = "some-arn:*"
}

resource "aws_cloudtrail" "denied" {
  name                          = "tf-trail-foobar"
  s3_bucket_name                = "test"
  s3_key_prefix                 = "prefix"
  include_global_service_events = false

}
