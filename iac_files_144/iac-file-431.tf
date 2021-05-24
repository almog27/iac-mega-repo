resource "aws_efs_file_system" "foo" {
  creation_token = "my-product"

  tags = {
    Name = "MyProduct"
  }
}

resource "aws_efs_file_system" "encrypted_disabled" {
  creation_token = "my-product"
  encrypted      = false

  tags = {
    Name = "MyProduct"
  }
}

resource "aws_efs_file_system" "encrypted_enabled" {
  creation_token = "my-product"
  encrypted      = true

  tags = {
    Name = "MyProduct"
  }
}
