# main.tf
provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "mm_bucket" {
  bucket  = "mm-460-bucket-name"
  tags    = {
	  Name          = "MMS3Bucket"
	  Environment    = "Production"
  }
}
