#Versao Terraform 
terraform {

  required_version = "1.1.6"

  required_providers {

    aws = {

      source = "hashicorp/aws"

      version = "4.3.0"
    }
  }
}

#Configure AWS Provider
provider "aws" {

  region = "us-east-1"

  profile = "terraform_ms"
}
#Create AWS Bucket
resource "aws_s3_bucket" "my-test-bucket" {

  bucket = "my-tf-test-bucket-msnet29022022"

  #  acl    = "private"

  tags = {

    Name = "My bucet"

    Environment = "Dev"

    ManagedBy = "Terrafrom"

    Owner = "samarcos"

    updatedAt = "01-03-2022"
  }
}