resource "aws_internet_gateway" "gw-east" {
  #vpc_id = aws_vpc.vpc-east
  
   tags = {
    Name="gw-east"
  }
}

resource "aws_internet_gateway_attachment" "gw-east-attach" {
    internet_gateway_id = aws_internet_gateway.gw-east.id
    vpc_id = aws_vpc.vpc-east.id
}