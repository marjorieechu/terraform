# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

## Terraform block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

## resource block
# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-063d43db0594b521b"  # Amazon Linux 2 AMI ID (replace with a valid AMI ID for your region)
  instance_type = "t2.micro"               # Instance type (t2.micro is free-tier eligible)

  # Optional: Add a tag to the instance
  tags = {
    Name = "s8marjorie-terraform"
  }
}
