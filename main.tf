

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "first_bucket" {
    bucket = "first-bucket-david"
}
