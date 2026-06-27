resource "aws_vpc" "owncloud_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "owncloud-vpc"
  }
}
