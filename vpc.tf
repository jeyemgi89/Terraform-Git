resource "aws_vpc" "aws_virginiajmg" {
  cidr_block = var.virginiajmg_cidr
  tags = {
    Name = "Virginiajmg"
  }
}

resource "aws_subnet" "dev" {
  vpc_id     = aws_vpc.aws_virginiajmg.id
  cidr_block = var.virginiajmg_cidr

  tags = {
    Name = "dev-virginiajmg"
  }
}