# Providers - AWS, Azure etc
# Resources - EC2, S3 etc
terraform {
  required_version = "~> 1.0" 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "first_ec2_instance" {
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
}