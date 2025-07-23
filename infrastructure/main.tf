terraform {
  backend "s3" {
    bucket         = var.aws_s3_terraform_state_bucket
    key            = var.aws_s3_terraform_state_bucket_key
    region         = var.aws_region
    dynamodb_table = var.aws_state_locks_dynamodb_table
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
