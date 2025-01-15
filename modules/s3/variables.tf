variable "bucket_name" {
    description = "Name of the S3 bucket"
    type        = string
}

variable "versioning" {
    description = "Enable versioning for the bucket"
    type = string
    default = "Enabled"
}

variable "force_destroy" {
    description = "Whether to force delete the bucket or not"
    type = bool
    default = false
}

variable "tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
  default     = {}
}

