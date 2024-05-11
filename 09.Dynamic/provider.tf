terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
  backend "s3" {
    bucket         = "lambda-test-s3-mcd-bkt"
    key            = "remote-state-for-each"
    region         = "us-east-1"
    dynamodb_table = "s3-remote-table"
  }
}

provider "aws" {
  region = "us-east-1"
}