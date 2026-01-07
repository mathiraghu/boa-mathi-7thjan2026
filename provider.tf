terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
  # terraform tfstate file remote backend section
  backend "s3" {
    bucket = "mathi-jan7-terraform"
    key = "dev/mathi/terraform.tfstate"
    encrypt = true
    region = "us-west-1"
    dynamodb_table = "mathi-locking-table1"
    
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}