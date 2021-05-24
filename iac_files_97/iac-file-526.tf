resource "aws_instance" "private" {
  ami                         = "ami-yyyyy"
  instance_type               = "t3.micro"
  associate_public_ip_address = false

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_launch_configuration" "private" {
  name          = "web_config"
  image_id      = "ami-yyyyyyy"
  instance_type = "t2.micro"
}

resource "aws_launch_template" "private" {
  name = "foo"

  network_interfaces {
    associate_public_ip_address = false
  }
}

resource "aws_spot_fleet_request" "private" {
  spot_price          = "0.03"
  allocation_strategy = "diversified"
  target_capacity     = 6
  valid_until         = "2019-11-04T20:44:20Z"
  iam_fleet_role      = "arn:aws:iam::123456789012:role/spot-fleet"

  launch_specification {
    instance_type            = "m4.10xlarge"
    ami                      = "ami-1234"
    spot_price               = "2.793"
    placement_tenancy        = "dedicated"
    iam_instance_profile_arn = "arn:aws:iam::123456789012:role/spot-fleet"
  }
}

