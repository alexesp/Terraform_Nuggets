resource "aws_instance" "server01" {
  ami = "ami-01d67cc599f23990b"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.subnet-south2a.id
  key_name = "tf_par_clave"
  associate_public_ip_address = true
  
  tags = {
    Name = "Instance_ubuntu_24_04"
  }
}

#  output "public_ip" {
#    value       = aws_instance.server01.public_ip
#  }