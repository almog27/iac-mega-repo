resource "aws_lb_listener" "insecure" {
  load_balancer_arn = "arn:aws:iam::123456789012:user"
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "TLS-1-0-2015-04"
  certificate_arn   = "arn:aws:iam::123456789012:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"

  default_action {
    type             = "forward"
    target_group_arn = "arn:aws:iam::123456789012:user"
  }
}

resource "aws_alb_listener" "insecure" {
  load_balancer_arn = "arn:aws:iam::123456789012:user"
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "TLS-1-0-2015-04"
  certificate_arn   = "arn:aws:iam::123456789012:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"

  default_action {
    type             = "forward"
    target_group_arn = "arn:aws:iam::123456789012:user"
  }
}
