variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "aws_s3_terraform_state_bucket" {
  type    = string
  default = "kgtool-terraform-state-prod"
}

variable "aws_s3_terraform_state_bucket_key" {
  type    = string
  default = "global/s3/terraform.tfstate"
}

variable "aws_state_locks_dynamodb_table" {
  type    = string
  default = "tofu-state-locks"
}
