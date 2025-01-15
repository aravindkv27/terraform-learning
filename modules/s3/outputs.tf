output "bucket_name" {
  value = aws_s3_bucket.s3_bucket_temp.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.s3_bucket_temp.arn
}
