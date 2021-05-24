resource "aws_lambda_function" "denied" {
  role          = "arn:aws:iam::123456789012:user"
  function_name = "test"
  environment {
    variables = {
      password = "SECRET_PASS"
    }
  }
}

resource "aws_lambda_function" "denied_2" {
  role          = "arn:aws:iam::123456789012:user"
  function_name = "test"
  environment {
    variables = {
      private_key = "SECRET_PASS"
    }
  }
}

resource "aws_lambda_function" "denied_3" {
  role          = "arn:aws:iam::123456789012:user"
  function_name = "test"
  environment {
    variables = {
      aws_access_key_id = "SECRET_PASS"
    }
  }
}

resource "aws_lambda_function" "denied_4" {
  role          = "arn:aws:iam::123456789012:user"
  function_name = "test"
  environment {
    variables = {
      token = "SECRET_PASS"
    }
  }
}

resource "aws_lambda_function" "denied_5" {
  role          = "arn:aws:iam::123456789012:user"
  function_name = "test"
  environment {
    variables = {
      foo     = "bar"
      api_key = "SECRET_PASS"
    }
  }
}

resource "aws_lambda_function" "denied_6" {
  role          = "arn:aws:iam::123456789012:user"
  function_name = "test"
  environment {
    variables = {
      aws_secret_access_key = "SECRET_PASS"
      secret                = "SECRET_PASS"
    }
  }
}
