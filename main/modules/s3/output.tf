output "bucket_name" {
  description = "Name Of The Application S3 Bucket"
  value       = aws_s3_bucket.exam_bucket.bucket
}

output "bucket_arn" {
  description = "ARN Of The Application S3 Bucket"
  value       = aws_s3_bucket.exam_bucket.arn
}

output "bucket_id" {
  description = "ID Of The Application S3 Bucket"
  value       = aws_s3_bucket.exam_bucket.id
}
