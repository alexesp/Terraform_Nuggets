# resource "aws_security_group" "http" {
#   name        = "admin"
#   description = "Creacion de grupo de seguridad para HTTP/SSH"

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1" # -1 indica que se permite cualquier protocolo (TCP, UDP, ICMP, etc.).
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }