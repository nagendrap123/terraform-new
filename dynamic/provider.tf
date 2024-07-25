terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "nag-devops"
    key    = "dynamic-demo"
    region = "us-east-1"
    dynamodb_table = "nag-devops-locking"
  }
}
provider "aws" {
  region = "us-east-1"
}