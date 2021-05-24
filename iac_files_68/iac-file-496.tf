resource "aws_lb_listener" "https" {
  load_balancer_arn = "arn:aws:iam::123456789012:user"
  port              = "443"
  protocol          = "HTTPS"

  default_action {
    type = "forward"
  }
}

resource "aws_alb_listener" "https" {
  load_balancer_arn = "arn:aws:iam::123456789012:user"
  port              = "443"
  protocol          = "HTTPS"

  default_action {
    type = "forward"
  }
}
