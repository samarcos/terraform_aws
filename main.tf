provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "my-tf-test-bucket" {
  bucket = "my-tf-test-bucket-msnet29022022"
  acl    = "private"

  tags = {
    
    Name        = "My bucet"

    Environment = "Dev"

    Managedby   = "Terrafrom"
  }
}