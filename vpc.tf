provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "aqwaqwaqw"
    key    = "myapp/dev/key"
    region = "ap-south-1"
  }
}


resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "TerraformDemo"
  }
}
