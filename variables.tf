variable "backend_bucket" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "backend_region" {
  description = "Region of the S3 bucket"
  type        = string
}

variable "backend_dynamodb_table" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "versioning" {
  description = "Enable versioning for the bucket"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Whether to force delete the bucket or not"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
  default     = {}
}