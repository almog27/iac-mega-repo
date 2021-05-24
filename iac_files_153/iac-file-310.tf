resource "aws_security_group" "allowed" {

  egress {
    from_port = 0
    to_port   = 65535
    protocol  = "tcp"

    cidr_blocks = ["192.168.1.0/24"]
  }
}

resource "aws_security_group" "allowed_2" {

  egress {
    from_port = 0
    to_port   = 65535
    protocol  = "tcp"

    cidr_blocks = ["10.0.0.0/24"]
  }
  egress {
    from_port = 0
    to_port   = 65535
    protocol  = "tcp"

    cidr_blocks = ["192.168.1.0/24"]
  }
}
