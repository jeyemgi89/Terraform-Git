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

resource "aws_security_group" "sg_public_intance" {
  name        = "Public Instance SG"
  description = "Allow SSH inbound traffic and all egress traffic"
  vpc_id      = aws_vpc.aws_virginiajmg.id

  dynamic "ingress" {
    for_each = var.ingress_port_list
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = [var.sg_ingress_cidr]
    }

  }
}