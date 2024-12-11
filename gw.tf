resource "aws_internet_gateway" "gw-south" {
  #vpc_id = aws_vpc.vpc-east
  
   tags = {
    Name="gw-south"
  }
}

resource "aws_internet_gateway_attachment" "gw-south-attach" {
    internet_gateway_id = aws_internet_gateway.gw-south.id
    vpc_id = aws_vpc.vpc-south.id
}