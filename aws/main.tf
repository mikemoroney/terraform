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
resource "aws_instance" "mm_orpheus_ubuntu_micro" {
  ami           = "ami-0b5e44cb401c67ac3"
  instance_type = "t2.small"
  key_name = var.public_ssh_key_name
  subnet_id = "subnet-001c5057a706f8dbd"
  tags = { 
    Name = var.instance_name
  }
}

output "ip_address" { 
  value = aws_instance.mm_orpheus_ubuntu_micro.private_ip 
}

output "instance_id" { 
  value = aws_instance.mm_orpheus_ubuntu_micro.id
}
