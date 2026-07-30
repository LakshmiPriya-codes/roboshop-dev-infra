terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.48.0"
    }
  }
    # remote state storage location
  backend "s3" {
    bucket         = "demo-bucket-90s-dev" # create your own s3 bucket record 
    key            = "roboshop-bastion-instance.tfstate" 
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true # Enables native S3 state locking (Terraform 1.10+)
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}