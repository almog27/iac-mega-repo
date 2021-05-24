resource "aws_instance" "public" {
  ami                         = "ami-yyyyy"
  instance_type               = "t3.micro"
  associate_public_ip_address = true

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_launch_configuration" "public" {
  name                        = "web_config"
  image_id                    = "ami-yyyyyy"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
}

resource "aws_launch_template" "public" {
  name = "foo"

  network_interfaces {
    associate_public_ip_address = true
  }
}

resource "aws_spot_fleet_request" "public" {
  iam_fleet_role      = "arn:aws:iam::123456789012:role/spot-fleet"
  spot_price          = "0.03"
  allocation_strategy = "diversified"
  target_capacity     = 6
  valid_until         = "2019-11-04T20:44:20Z"

  launch_specification {
    instance_type               = "m4.10xlarge"
    ami                         = "ami-1234"
    spot_price                  = "2.793"
    placement_tenancy           = "dedicated"
    iam_instance_profile_arn    = "arn:aws:iam::123456789012:role/spot-fleet"
    associate_public_ip_address = true
  }
}
