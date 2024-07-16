terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
 
  backend "s3" {
    bucket = "techzena-remote-state"
    key    = "remote-state-demo" # as per choice we can give 
    region = "us-east-1"
    dynamodb_table = "techzena-locking"
  }
}



provider "aws" {
  region = "us-east-1"
}