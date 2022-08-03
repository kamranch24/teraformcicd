terraform {
  required_version = ">= 1.1"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.74.2"
    }
  }
}

provider "aws" {
    region = "eu-central-1"

}


resource "aws_s3_bucket" "cicd" {
  bucket = "my-first-cicd-bucket"

  tags = {
    Name        = "CI/CD Bucket"
    Environment = "Dev"
  }
}