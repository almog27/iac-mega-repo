resource "aws_ebs_volume" "example_volume_unencrypted" {
  availability_zone = "us-west-2a"
  size              = 40
  encrypted         = false
}
