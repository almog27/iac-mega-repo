resource "aws_launch_configuration" "unencrypted" {
  name          = "web_config"
  image_id      = "ami-yyyyyy"
  instance_type = "t2.micro"
}

