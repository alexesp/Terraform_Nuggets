resource "aws_internet_gateway" "igw-south" {
  vpc_id = aws_vpc.vpc-south.id
  
   tags = {
    Name="igw-south"
  }
}

resource "aws_internet_gateway_attachment" "igw-south-attach" {
    internet_gateway_id = aws_internet_gateway.igw-south.id
    vpc_id = aws_vpc.vpc-south.id
}