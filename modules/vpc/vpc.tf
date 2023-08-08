
/*
resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name="myvpc"
  }
}

resource "aws_subnet" "public_subneta" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.pub_sub_cidra
  availability_zone = var.az_1a
  tags = {
    Name = "public-subent-1a"
  }
}

resource "aws_subnet" "public_subnetb" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.pub_sub_cidrb
  availability_zone = var.az_1b
  tags = {
    Name = "public-subent-1b"
  }
}
*/