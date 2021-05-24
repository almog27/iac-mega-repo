resource "aws_instance" "allowed" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t3.micro"

  metadata_options {
    http_tokens = "required"
  }
}

resource "aws_instance" "allowed_2" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t3.micro"

  metadata_options {
    http_endpoint = "disabled"
  }
}

resource "aws_instance" "allowed_3" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t3.micro"

  metadata_options {
    http_endpoint = "disabled"
    http_tokens   = "optional"
  }
}
