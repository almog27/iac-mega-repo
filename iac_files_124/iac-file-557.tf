resource "aws_ami" "denied" {
  name                = "aws_ami_not_encrypted"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"

  ebs_block_device {
    device_name = "/dev/xvda"
    encrypted   = false
    volume_size = 8
  }
}

resource "aws_ami" "denied_2" {
  name                = "aws_ami_not_encrypted"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"

  ebs_block_device {
    device_name = "/dev/xvda"
    volume_size = 8
  }
}

resource "aws_ami" "denied_3" {
  name                = "aws_ami_is_encrypted"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"

  ebs_block_device {
    device_name = "/dev/xvda"
    encrypted   = true
    volume_size = 8
  }

  ebs_block_device {
    device_name = "/dev/xvdb"
    encrypted   = false
    volume_size = 8
  }
}

resource "aws_ami" "allowed" {
  name                = "aws_ami_is_encrypted"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"

  ebs_block_device {
    device_name = "/dev/xvda"
    encrypted   = true
    volume_size = 8
  }
}

resource "aws_ami" "allowed_2" {
  name                = "aws_ami_snapshot_id_is_set"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"

  ebs_block_device {
    device_name = "/dev/xvda"
    volume_size = 8
    snapshot_id = "snapshot_id"
  }
}

