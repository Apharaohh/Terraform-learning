provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "app_bucket" {
  bucket = "app-server-learn-terraform-12345"  # Must be globally unique

  tags = {
    Name = "learn-terraform"
  }
}

output "bucket_name" {
  value       = aws_s3_bucket.app_bucket.id
  description = "Name of the S3 bucket"
}

output "bucket_arn" {
  value       = aws_s3_bucket.app_bucket.arn
  description = "ARN of the S3 bucket"
}