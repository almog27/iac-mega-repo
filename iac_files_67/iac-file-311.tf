resource "aws_security_group" "denied" {
  egress {
    from_port = 0
    to_port   = 65535
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "denied_2" {
  egress {
    from_port = 0
    to_port   = 65535
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port   = 65535
    protocol  = "tcp"

    cidr_blocks = ["192.168.1.0/24"]
  }
}
