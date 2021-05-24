resource "aws_instance" "denied" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"
  user_data     = <<META
SECRET_ACCESS_ID=ASIA1234FFFFF4567HHH
META
}

resource "aws_instance" "denied_2" {
  ami              = "ami-005e54dee72cc1d00" # us-west-2
  instance_type    = "t2.micro"
  user_data_base64 = <<META
U0VDUkVUX0FDQ0VTU19JRD1BU0lBMTIzNEZGRkZGNDU2N0hISApTRUNSRVRfQUNDRVNTX0tFWT0xMjM0NWFhYWFhYTY3ODkwYmJiYmJiYjEyMzQ1NDY1Y2NjZCtjZHJyCg==
META
}

resource "aws_instance" "denied_3" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"
  user_data     = <<META
SECRET_ACCESS_KEY=12345aaaaaa67890bbbbbbb12345465cccd+cdrr
META
}

resource "aws_instance" "allowed" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"
  user_data     = <<META
SECRET_ACCESS_ID={SOME-PROVIDER-DATA}
META
}

resource "aws_instance" "allowed_2" {
  ami              = "ami-005e54dee72cc1d00" # us-west-2
  instance_type    = "t2.micro"
  user_data_base64 = <<META
U0VDUkVUX0FDQ0VTU19JRD1ub19zZWNyZXRfaGVyZQpTRUNSRVRfQUNDRVNTX0tFWT1pdF9zaG91bGRudF9tYXR0ZXIK
META
}

resource "aws_instance" "allowed_3" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"
}

resource "aws_instance" "allowed_4" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"
  user_data     = "516316f6cf4a5f2a9fdad256d20e21b4e4e8d3bf"
}
