resource "aws_api_gateway_stage" "allowed" {
  deployment_id        = "test"
  rest_api_id          = "test"
  stage_name           = "example"
  xray_tracing_enabled = true
}
