terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.72.1"
    }
  }
  backend "s3" {
    bucket = "kunamvenkat.xyz"
    key    = "expense-vpc.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}