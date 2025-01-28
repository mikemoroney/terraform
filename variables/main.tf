# main.tf
provider "aws" {
  region = "us-east-1"
}

variable "name" {
    type = string
    default = "World"
}

variable "provision" { 
  type = bool
}

variable "docker_ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  default = [
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }
  ]
}

variable "myInteger" { 
  type = number
  default = 1234
}

resource "null_resource" "null_resource_simple" {
    provisioner "local-exec" {
        command = "echo Hello '${var.name}'"
    }
}

