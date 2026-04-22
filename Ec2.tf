resource "aws_instance" "public_instance" {
  ami                    = "ami-0c1e21d82fe9c9336"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_public_intance.id]
  tags = {
    Name = "Mi primera Ec2"


  }
}