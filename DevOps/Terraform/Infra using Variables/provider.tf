# Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.97.0"
    }
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
}
