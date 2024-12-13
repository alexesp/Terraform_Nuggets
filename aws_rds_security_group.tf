resource "aws_security_group" "allow_mysql" {
    name = "allow_mysql"
    description = "Allow MySql inbond traffic"
    vpc_id = aws_vpc.vpc-south.id

    ingress = {
        description = "TLS from VPC"
        from_port = 3306
        from_port = 3306
        protocol = "tcp"
       # cidr_block = ["18.100.47.133"]
    }
  
}