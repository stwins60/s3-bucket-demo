resource "aws_s3_bucket" "this" {
  bucket = "idris-s3-bucket-demo-2023099"
  tags = {
    Name = "s3-bucket-demo-2023-${var.environment}"
  }
}