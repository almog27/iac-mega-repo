resource "aws_lb_listener" "http" {
  load_balancer_arn = "arn:aws:iam::123456789012:user"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "forward"
  }
}

resource "aws_alb_listener" "http" {
  load_balancer_arn = "arn:aws:iam::123456789012:user"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "forward"
  }
}
