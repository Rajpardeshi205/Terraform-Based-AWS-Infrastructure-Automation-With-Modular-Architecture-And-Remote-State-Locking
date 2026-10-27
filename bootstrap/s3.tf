resource "aws_s3_bucket" "main-bucket" {
  bucket        = "${var.env}-${var.bucket_name}"
  force_destroy = true
  tags = {
    Name        = "${var.env}-${var.bucket_name}"
    Environment = "${var.env}"
  }
}
