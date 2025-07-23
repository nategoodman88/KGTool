variable "aws_region" {
  default = "us-east-2"
}

variable "aws_s3_terraform_state_bucket" {
  default = "kgtool-terraform-state-prod"
}

variable "aws_s3_terraform_state_bucket_key" {
  default = "global/s3/terraform.tfstate"
}

variable "aws_state_locks_dynamodb_table" {
  default = "terraform-state-locks"
}
