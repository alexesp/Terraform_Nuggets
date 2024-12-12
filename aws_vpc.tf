
resource "aws_vpc" "vpc-south" {
  cidr_block = "10.5.0.0/16"

  tags = {
    Name="tf-vpc-south"
  }
}

# resource "aws_default_vpc" "default" {
#   force_destroy = true
# }