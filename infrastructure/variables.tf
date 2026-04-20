variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "aws_s3_terraform_state_bucket" {
  type    = string
  default = "tf-states-730335427928-us-east-2-an"
}

variable "aws_s3_terraform_state_bucket_key" {
  type    = string
  default = "global/s3/terraform.tfstate"
}

variable "aws_state_locks_dynamodb_table" {
  type    = string
  default = "tofu-state-locks"
}
