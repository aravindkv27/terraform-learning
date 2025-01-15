resource "aws_s3_bucket" "s3_bucket_temp" {
    bucket = var.bucket_name
    force_destroy = var.force_destroy
    tags = var.tags
}

resource "aws_s3_bucket_versioning" "versioning_s3_bucket_temp" {
    bucket = aws_s3_bucket.s3_bucket_temp.id
    versioning_configuration {
        status = var.versioning
    }
    
}
resource "aws_s3_bucket_public_access_block" "s3_bucket_temp" {
    bucket = aws_s3_bucket.s3_bucket_temp.id

    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets = true

}

