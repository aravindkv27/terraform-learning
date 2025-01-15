


terraform {

  backend "s3" {
    bucket         = "test-iac-state"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "demo-iac-lock-table"
    encrypt        = true
  }
}
