terraform {
  cloud {
    organization = "terraform-opa-testing"

    workspaces {
      name = "terraform-opa-demo"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "opa-terraform-demo-12345"
  acl    = "private"
}
