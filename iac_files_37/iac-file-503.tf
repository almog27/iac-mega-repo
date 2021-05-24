resource "aws_instance" "unencrypted" {
  ami           = "ami-yyyyyy"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
