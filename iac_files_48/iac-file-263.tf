resource "aws_instance" "denied" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t3.micro"
}


resource "aws_instance" "denied_2" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t3.micro"

  metadata_options {
    http_endpoint = "enabled"
  }

}

resource "aws_instance" "denied_3" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t3.micro"

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "optional"
  }
}
