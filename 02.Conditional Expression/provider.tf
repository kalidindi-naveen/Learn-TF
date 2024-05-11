terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}

# provide authentication here
provider "aws" {
  region = "us-east-1"
}

# Not Recommended 

# provider "aws" {
#   region     = "us-east-1"
#   access_key = "my-access-key"
#   secret_key = "my-secret-key"
# }