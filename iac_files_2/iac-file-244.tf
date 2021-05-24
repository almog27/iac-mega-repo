resource "aws_api_gateway_stage" "allowed" {
  deployment_id = "id-xxxx"
  rest_api_id   = "id-yyyy"
  stage_name    = "example"
  access_log_settings {
    destination_arn = "arn:aws:iam::123456789012:user"
    format          = ""
  }
}

resource "aws_api_gateway_stage" "denied" {
  deployment_id = "id-xxxx"
  rest_api_id   = "id-yyyy"
  stage_name    = "example"

}

resource "aws_apigatewayv2_stage" "allowed" {
  name          = "test"
  deployment_id = "id-xxxx"
  api_id        = "id-yyyy"

  access_log_settings {

    destination_arn = "arn:aws:iam::123456789012:user"
    format          = ""
  }
}

resource "aws_apigatewayv2_stage" "denied" {
  name          = "test"
  deployment_id = "id-xxxx"
  api_id        = "id-yyyy"

}
