module "s3_bucket_temp" {
  source = "../modules/s3"
  providers = {
    aws = aws.demo-test
  }
  bucket_name   = "demo-test-bucket-iac"
  versioning    = "Enabled"
  force_destroy = false
  tags = {
    Environment = "dev"
    Project     = "demo-iac"
  }
}

module "s3_bucket_test" {
  source = "../modules/s3"
  providers = {
    aws = aws.demo-test
  }
  bucket_name   = "demo-test-bucket-cicd"
  versioning    = "Disabled"
  force_destroy = false
  tags = {
    Environment = "test"
    Project     = "demo-iac"
  }

}

module "s3_bucket_github_action" {
  source = "../modules/s3"
  providers = {
    aws = aws.demo-test
  }
  bucket_name   = "demo-github-action-test"
  versioning    = "Disabled"
  force_destroy = false
  tags = {
    Environment = "test"
    Project     = "demo-iac"
  }

}

# module "dynamodb_lock" {

#   source      = "../../modules/dynamodb"
#   providers = {
#     aws = aws.demo-test
#   }
#   table_name  = var.backend_dynamodb_table
#   tags = {
#     Environment = "dev"
#     Project     = "demo-iac"
#   }
# }

