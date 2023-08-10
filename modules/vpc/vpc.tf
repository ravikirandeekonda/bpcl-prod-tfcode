resource "aws_vpc" "aws-vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name="aws-vpc"
  }
}

resource "aws_subnet" "public_subneta" {
  vpc_id = aws_vpc.aws-vpc.id
  cidr_block = var.pub_sub_cidra
  availability_zone = var.az_1a
  tags = {
    Name = "aws-public-subent-1a"
  }
}

resource "aws_subnet" "public_subnetb" {
  vpc_id = aws_vpc.aws-vpc.id
  cidr_block = var.pub_sub_cidrb
  availability_zone = var.az_1b
  tags = {
    Name = "aws-public-subent-1b"
  }
}
