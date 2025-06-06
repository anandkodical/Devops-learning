# Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.95.0"
    }
  }
}

# Provider Block
provider "aws" {
  region  = "ap-south-1"
}

# Create 4 IAM Users
resource "aws_iam_user" "myuser" {
  for_each = toset(["Kiran", "Suman", "Shiva", "Shankar"])
  name     = each.key
}
