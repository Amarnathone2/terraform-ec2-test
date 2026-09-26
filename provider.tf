terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "v1.16.4"
    }
  }
  backend "s3" {
    bucket = "amar-remote-state"
    key    = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "amar-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}