resource "aws_vpc" "aws_virginiajmg" {
  cidr_block = var.virginiajmg_cidr
  tags = {
    Name = "Virginiajmg"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.aws_virginiajmg.id
  cidr_block        = var.subnet[1]
  availability_zone = "us-east-1a"

  tags = {
    Name = "private_subnet"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.aws_virginiajmg.id
  cidr_block        = var.subnet[0]
  availability_zone = "us-east-1a"

  tags = {
    Name = "public_subnet"
  }
}