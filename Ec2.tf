resource "aws_instance" "public_instance" {
  ami           = "ami-0c1e21d82fe9c9336"
  instance_type = "t3.micro"
  tags = {
    Name = "Mi primera Ec2"
  }
}