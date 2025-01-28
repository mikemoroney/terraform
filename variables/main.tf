# main.tf
provider "aws" {
  region = "us-east-1"
}

variable "name" {
    type = string
    default = "World"
}

variable "provision" { 
  type = boolean
  default = "false"
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

resource "null_resource" "null_resource_simple" {
    provisioner "local-exec" {
        command = "echo Hello '${var.name}'"
    }
}

