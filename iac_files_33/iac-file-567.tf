resource "aws_sqs_queue_policy" "allowed" {
  queue_url = "id-yyyyy"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "sqspolicy",
  "Statement": [
    {
      "Sid": "First",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "sqs:SendMessage",
      "Resource": "arn:aws:iam::123456789012:user",
      "Condition": {
        "ArnEquals": {
          "aws:SourceArn": "arn:aws:iam::123456789012:user"
        }
      }
    }
  ]
}
POLICY
}
