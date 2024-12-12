resource "aws_route_table" "routes-south" {
  
vpc_id = aws_vpc.vpc-south.id

route{
    cidr_block = "0.0.0.0/0"
    gateway_id=aws_internet_gateway.gw-south.id
}

tags = {
  Name="routes-south"
}
}

resource "aws_route_table_association" "route_assoc_south2a"{
 subnet_id = aws_subnet.subnet-south2a.id
 route_table_id = aws_route_table.routes-south.id

}
resource "aws_route_table_association" "route_assoc_south2b"{
 subnet_id = aws_subnet.subnet-south2b.id
 route_table_id = aws_route_table.routes-south.id
 
}