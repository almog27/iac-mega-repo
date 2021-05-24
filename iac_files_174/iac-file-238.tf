resource "aws_api_gateway_domain_name" "denied" {
  certificate_arn = "arn:aws:iam::123456789012:user"
  domain_name     = "api.example.com"
  security_policy = "TLS_1_0"
}


