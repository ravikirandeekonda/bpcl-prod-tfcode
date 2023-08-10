resource "aws_vpc" "aws-vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "aws-vpc"
  }
}

resource "aws_subnet" "public_subneta" {
  vpc_id            = aws_vpc.aws-vpc.id
  cidr_block        = var.pub_sub_cidra
  availability_zone = var.az_1a
  tags = {
    Name = "aws-public-subent-1a"
  }
}

resource "aws_subnet" "public_subnetb" {
  vpc_id            = aws_vpc.aws-vpc.id
  cidr_block        = var.pub_sub_cidrb
  availability_zone = var.az_1b
  tags = {
    Name = "aws-public-subent-1b"
  }
}

resource "aws_route_table" "publicroute" {
  vpc_id = aws_vpc.aws-vpc.id
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.aws-vpc.id
}

resource "aws_route" "awsroute" {
  route_table_id         = aws_route_table.publicroute.id
  gateway_id             = aws_internet_gateway.igw.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "pubrtass1a" {
  subnet_id      = aws_subnet.public_subneta.id
  route_table_id = aws_route_table.publicroute.id
}

resource "aws_route_table_association" "pubrtass1b" {
  subnet_id      = aws_subnet.public_subnetb.id
  route_table_id = aws_route_table.publicroute.id
}