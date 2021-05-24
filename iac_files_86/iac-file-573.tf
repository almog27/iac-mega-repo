resource "aws_ebs_volume" "example" {
  availability_zone = "us-west-2a"
  size              = 40
}

resource "aws_ebs_snapshot" "example_snapshot" {
  volume_id = "id-xxxxx"
}

resource "aws_ebs_snapshot" "example_snapshot_unencrypted" {
  volume_id   = "id-xxxx"
  description = "Disable default encryption on the EBS snapshot"
}
