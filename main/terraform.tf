terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.70.0"
    }
  }
  backend "s3" {
    bucket         = "dev-mynewnaruto006677"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dev-exam-table"
    encrypt        = true
  }
}
