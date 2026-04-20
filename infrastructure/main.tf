terraform {
  backend "s3" {
    bucket         = "kgtool-terraform-state-prod"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "tofu-state-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
