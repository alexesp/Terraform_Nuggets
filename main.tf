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
  region  = "us-east-1"
}

resource "aws_vpc" "vpc-east" {
  cidr_block = "10.5.0.0/16"

  tags = {
    Name="tf-vpc-east"
  }
}

resource "aws_internet_gateway" "gw-east" {
  #vpc_id = aws_vpc.vpc-east
  
   tags = {
    Name="gw-east"
  }
}
# resource "aws_instance" "example" {
#   ami           = "ami-090abff6ae1141d7d"
#   instance_type = "t3.micro"

#   tags = {
#     Name = "Example Instance"
#   }
#}
