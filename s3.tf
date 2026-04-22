resource "aws_s3_bucket" "bucketjmg" {
  bucket = "myterraform-bucketjmg"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}