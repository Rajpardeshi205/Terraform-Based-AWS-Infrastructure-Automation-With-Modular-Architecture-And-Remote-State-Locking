resource "aws_dynamodb_table" "exam-dynamodb" {
  name         = "${var.env}-exam-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = var.hash_key

  attribute {
    name = var.hash_key
    type = "S"
  }
  tags = {
    Name        = "${var.env}-exam-table"
    Environment = "${var.env}"
  }
}
