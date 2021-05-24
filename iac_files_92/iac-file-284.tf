resource "aws_lambda_function" "denied" {
  filename      = "lambda_function_payload.zip"
  function_name = "lambda_function_name"
  role          = "arn:aws:iam::123456789012:user"
  handler       = "exports.test"
}

resource "aws_lambda_function" "allowed" {
  filename      = "lambda_function_payload.zip"
  function_name = "lambda_function_name"
  role          = "arn:aws:iam::123456789012:user"
  handler       = "exports.test"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "allowed_2" {
  filename      = "lambda_function_payload.zip"
  function_name = "lambda_function_name"
  role          = "arn:aws:iam::123456789012:user"
  handler       = "exports.test"

  tracing_config {
    mode = "Active"
  }
}
