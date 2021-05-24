resource "aws_lambda_function" "allowed" {
  function_name = "test"
  role          = "arn:aws:iam::123456789012:user"
}

resource "aws_lambda_function" "allowed_2" {
  role          = "arn:aws:iam::123456789012:user"
  function_name = "test"
  environment {
    variables = {
      foo = "bar"
    }
  }
}
