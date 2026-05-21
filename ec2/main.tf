# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

variable "instance_name" {
  type = string
  default = "mmawstf"
} 

variable "instance_type" { 
  type = string
  default = "t2.small"
}

# Create an EC2 instance
resource "aws_instance" "mm_instance" {
  ami           = "ami-0b5e44cb401c67ac3"
  instance_type = var.instance_type
  key_name = "mmkeypair"
  subnet_id = "subnet-001c5057a706f8dbd"
  tags = { 
    Name = var.instance_name
  }
}

output "ip_address" { 
  value = aws_instance.mm_instance.private_ip 
}

output "instance_id" { 
  value = aws_instance.mm_instance.id
}
