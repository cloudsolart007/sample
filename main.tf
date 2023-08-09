#provider.tf

provider "aws"{
region = "us-east-1"
access_key = "<access_key>"
secret_key = "<secret_key>"
}
 #vpc.tf

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "VPC-demo"
    Purpose = "terrafrom using Jenkins"
  }
}
