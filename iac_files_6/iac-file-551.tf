resource "aws_instance" "encrypted" {
  ami           = "id-xxxxx"
  instance_type = "t3.micro"

  root_block_device {
    encrypted = true
  }

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_launch_configuration" "encrypted" {
  name          = "web_config"
  image_id      = "id-xxxxx"
  instance_type = "t2.micro"

  root_block_device {
    encrypted = true
  }
}

resource "aws_spot_fleet_request" "encrypted" {

  iam_fleet_role      = "arn:aws:iam::123456789012:role/spot-fleet"
  spot_price          = "0.03"
  allocation_strategy = "diversified"
  target_capacity     = 6
  valid_until         = "2019-11-04T20:44:20Z"

  launch_specification {
    instance_type            = "m4.10xlarge"
    ami                      = "ami-1234"
    spot_price               = "2.793"
    placement_tenancy        = "dedicated"
    iam_instance_profile_arn = "arn:aws:iam::123456789012:role/spot-fleet"
    root_block_device {
      encrypted = true
    }
  }
}

resource "aws_spot_instance_request" "encrypted" {
  ami           = "ami-1234"
  spot_price    = "0.03"
  instance_type = "c4.xlarge"

  root_block_device {
    encrypted = true
  }

  tags = {
    Name = "CheapWorker"
  }
}
