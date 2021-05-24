resource "aws_spot_fleet_request" "unencrypted" {
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
      encrypted = false
    }
  }
}
