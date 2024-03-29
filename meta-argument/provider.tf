terraform {
  required_version = ">=1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
 #profile = "default"
  
}
# Create a VPC
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "main"
  }
}
