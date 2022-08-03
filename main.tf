terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.24.0"
    }
  }
}

provider "aws" {
    region = "eu-central-1"
    AWS_SECRET_ACCESS_KEY="wH4tijXR3P5BKrXDdvpst1END20S7FqelO9eXHfZ"
    AWS_ACCESS_KEY_ID="AKIAVI4H6VPUCSZVSVT6"
}


resource "aws_s3_bucket" "cicd" {
  bucket = "my-first-cicd-bucket"

  tags = {
    Name        = "CI/CD Bucket"
    Environment = "Dev"
  }
}