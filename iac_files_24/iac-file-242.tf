resource "aws_api_gateway_method" "allowed" {
  rest_api_id   = "id-xxxx"
  resource_id   = "id-yyyy"
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "allowed_2" {
  rest_api_id = "id-xxxx"
  resource_id = "id-yyyy"

  http_method   = "ANY"
  authorization = "CUSTOM"
}

resource "aws_api_gateway_method" "allowed_3" {
  rest_api_id = "id-xxxx"
  resource_id = "id-yyyy"

  http_method   = "GET"
  authorization = "AWS_IAM"
}
