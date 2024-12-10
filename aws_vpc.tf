
resource "aws_vpc" "vpc-east" {
  cidr_block = "10.5.0.0/16"

  tags = {
    Name="tf-vpc-east"
  }
}