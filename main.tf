terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.75"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-south-2"
}




# resource "aws_instance" "example" {
#   ami           = "ami-090abff6ae1141d7d"
#   instance_type = "t3.micro"

#   tags = {
#     Name = "Example Instance"
#   }
#}
