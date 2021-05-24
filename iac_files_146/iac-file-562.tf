resource "aws_sns_topic" "sns_2" {
  name              = "user-updates-topic"
  kms_master_key_id = "alias/aws/sns"
}
