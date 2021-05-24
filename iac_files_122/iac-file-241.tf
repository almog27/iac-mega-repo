resource "aws_athena_database" "encryption_disabled" {
  name   = "example"
  bucket = "some-bucket-name"
}

resource "aws_athena_database" "encryption_enabled" {
  name   = "example"
  bucket = "some-bucket-name"
  encryption_configuration {
    encryption_option = "SSE_S3"
  }
}
