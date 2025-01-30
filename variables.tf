variable "repository_name" {
  description = "Name of the repo"
  type        = string
}

variable "iam_role" {
  type        = string
  description = "Self-hosted runner EC2 instance role"
}

variable "lifecycle_policy" {
  type        = string
  description = "the lifecycle policy to be applied to the ECR repo"
}

variable "aws_account_id" {
  description = "Target AWS Account ID"
  type        = string
}
variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-west-2"
}

variable "backend_s3_bucket" {
  description = "Name of the S3 bucket for Terraform backend"
  type        = string
  default     = "terraform-backend-primary-region"
}

variable "backend_dynamodb_table" {
  description = "Name of the DynamoDB table for Terraform state locking"
  type        = string
  default     = "terraform-backend-ddb"
}
