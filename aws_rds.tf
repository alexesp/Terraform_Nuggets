resource "aws_db_subnet_group" "subnet_group_db_south2" {
    #provider = aws.aws-eu-south-2
    name = "terraform2"
    subnet_ids = [aws_subnet.subnet-south2a.id, aws_subnet.subnet-south2b.id,aws_subnet.subnet-south2c.id]

  
}
resource "aws_db_instance" "rdsdb-suth2" {
    allocated_storage = 10
    db_name = "terraform_db"
    engine = "mysql"
    engine_version = "8.0.39"
    instance_class = "db.t4g.micro"
    username = "admin_123"
    password = "aDMIn_321"
    skip_final_snapshot = true
    db_subnet_group_name = aws_db_subnet_group.subnet_group_db_south2.name
    publicly_accessible = true
}
 
