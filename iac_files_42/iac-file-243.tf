resource "aws_api_gateway_method" "denied" {
  rest_api_id = "id-xxxx"
  resource_id = "id-yyyy"

  http_method   = "ANY"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "denied_2" {
  rest_api_id = "id-xxxx"
  resource_id = "id-yyyy"

  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "denied_3" {
  rest_api_id = "id-xxxx"
  resource_id = "id-yyyy"

  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "denied_4" {
  rest_api_id = "id-xxxx"
  resource_id = "id-yyyy"

  http_method   = "PUT"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "denied_5" {
  rest_api_id = "id-xxxx"
  resource_id = "id-yyyy"

  http_method   = "DELETE"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "denied_6" {
  rest_api_id = "id-xxxx"
  resource_id = "id-yyyy"

  http_method   = "HEAD"
  authorization = "NONE"
}
