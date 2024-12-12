resource "aws_subnet" "subnet-south2a" {
  vpc_id = aws_vpc.vpc-south.id
  cidr_block = "10.5.10.0/24"
  availability_zone = "eu-south-2a"
  tags = {
    Name="subnet-south2a"
  }
}
resource "aws_subnet" "subnet-south2b" {
  vpc_id = aws_vpc.vpc-south.id
  cidr_block = "10.5.20.0/24"
  availability_zone = "eu-south-2b"
  tags = {
    Name="subnet-south2b"
  }
}
resource "aws_subnet" "subnet-south2c" {
  vpc_id = aws_vpc.vpc-south.id
  cidr_block = "10.5.30.0/24"
  availability_zone = "eu-south-2c"
  tags = {
    Name="subnet-south2c"
  }
}