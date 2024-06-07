# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

variable "instance_name" {
  type = string
  default = "mmawstf"
} 

variable "public_ssh_key_name" {
  default = "mmkeypair"
}

# Create an EC2 instance
resource "aws_instance" "mmtf1" {
  ami           = "ami-0b5e44cb401c67ac3"
  instance_type = "t2.large"
  key_name = var.public_ssh_key_name
}
  
  tags {
    Name = var.instance_name
  }
}
