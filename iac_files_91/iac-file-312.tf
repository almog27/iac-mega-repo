resource "aws_security_group_rule" "allowed" {
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  security_group_id = "sg-123456"

  type        = "egress"
  cidr_blocks = ["192.168.1.0/24"]
}

