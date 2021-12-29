terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.70.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAUN56ZNTPJ4OXQMM6"
  secret_key = "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"
}

# Create a VPC
resource "aws_vpc" "us-east-2" {
  cidr_block = "10.0.0.0/16"
}