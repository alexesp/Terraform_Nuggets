resource "aws_route_table" "routes-south" {
  
vpc_id = aws_vpc.vpc-south.id

route{
    cidr_block = "0.0.0.0/0"
    gateway_id=aws_internet_gateway.gw-south
}

tags = {
  Name="routes-south"
}
}