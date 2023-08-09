#provider.tf

provider "aws"{
region = "ap-south-1"
access_key = "AKIA354XKZ7G4AAAOK6N"
secret_key = "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"
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
