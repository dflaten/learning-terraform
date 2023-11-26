
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
  profile = "admin"
}

# Any resource that starts with `aws_` tells you it will be from AWS
# if you had `google_` instead it would be from GCP.
# if you had `poastgresql_` it would be from Postgres
resource "aws_s3_bucket" "first_bucket" {
  # Some properties on resources are optional and some are required.
  # Bucket for an S3 bucket defines the name of the bucket which is required.
  bucket = "first-bucket-b1"
}
