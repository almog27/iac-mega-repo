resource "aws_security_group" "sg_2" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "id-yyyyy"
}
