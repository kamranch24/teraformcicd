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
    

}


resource "aws_iam_user" "lb" {
  name = "loadbalancer"
  path = "/"

  tags = {
    tag-key = "tags"
  }
}

resource "aws_iam_group" "developers" {
  name = "developers"
  path = "/"
}