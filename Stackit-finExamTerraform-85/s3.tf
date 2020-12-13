resource "aws_s3_bucket" "buck3" {
  bucket = "buck3"
  acl    = "public-read"

  tags = {
    Name        = "buck3"
    Environment = "Dev"
  }
}
