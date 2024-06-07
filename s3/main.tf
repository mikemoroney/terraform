# main.tf
provider "aws" {
  region = "us-east-1"
}

variable "bucket_name" { 
	type = string
	default = "mm-460-bucket"
} 

resource "aws_s3_bucket" "mm_bucket" {
  bucket  = var.bucket_name
  tags    = {
	  Name          = "MMS3Bucket"
	  Environment    = "Test"
  }
}
