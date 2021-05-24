resource "aws_api_gateway_stage" "denied" {
  deployment_id = "test"
  rest_api_id   = "test"
  stage_name    = "example"
}

resource "aws_api_gateway_stage" "denied_2" {
  deployment_id        = "test"
  rest_api_id          = "test"
  stage_name           = "example"
  xray_tracing_enabled = false
}
