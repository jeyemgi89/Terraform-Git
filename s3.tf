resource "aws_s3_bucket" "bucket" {
  bucket = "myfirst-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}