resource "aws_security_group_rule" "denied" {
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  security_group_id = "sg-123456"

  type        = "egress"
  cidr_blocks = ["0.0.0.0/0"]
}

