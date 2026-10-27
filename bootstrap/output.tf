output "state_bucket_name" {
  description = "S3 Bucket Used For Terraform State"
  value       = aws_s3_bucket.main-bucket.bucket
}

output "lock_table_name" {
  description = "DynamoDB Table Used For State Locking"
  value       = aws_dynamodb_table.exam-dynamodb.name
}
