/*
provider "aws" {
  region = "us-east-1b"
}
*/
######### Subnets #################

resource "aws_subnet" "mySubnet_4" {
  vpc_id     = aws_vpc.myVpc.id # Argument
  cidr_block = "10.0.0.96/27"

  tags = {
    Name = "Public subnet 1b"
  }
}

resource "aws_subnet" "mySubnet_5" {
  vpc_id     = aws_vpc.myVpc.id # Argument
  cidr_block = "10.0.0.128/27"


  tags = {
    Name = "Private subnet 1b"
  }
}

resource "aws_subnet" "mySubnet_6" {
  vpc_id     = aws_vpc.myVpc.id # Argument 
  cidr_block = "10.0.0.160/27"

  tags = {
    Name = "Private DB subnet 1b"
  }
}