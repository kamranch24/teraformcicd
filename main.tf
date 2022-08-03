terraform {
  required_version = ">= 1.1"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.24.0"
    }
  }
}

provider "aws" {
    region = "eu-central-1"
    secret_key = var.aws_secret_key
    access_key = var.aws_key_id

}


resource "aws_s3_bucket" "cicd" {
  bucket = "my-first-cicd-bucket"

  tags = {
    Name        = "CI/CD Bucket"
    Environment = "Dev"
  }
}