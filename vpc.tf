resource "aws_vpc" "aws_virginiajmg" {
  cidr_block = var.virginiajmg_cidr
  tags = {
    Name = "Virginiajmg"

  }

}