resource "aws_db_subnet_group" "subnet_group_db_south2" {
    provider = aws.aws-eu-south-2
    name = "terraform"
    subnet_ids = [aws_subnet.subnet-south2a.id, aws_subnet.subnet-south2b.id,aws_subnet.subnet-south2c.id]

  
}