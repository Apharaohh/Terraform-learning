provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "app_server" {

  tags = {
    Name = "learn-terraform"
  }
}
