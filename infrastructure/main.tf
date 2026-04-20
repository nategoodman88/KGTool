terraform {
  backend "s3" {
    bucket         = "tf-states-730335427928-us-east-2-an"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "tofu-state-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
