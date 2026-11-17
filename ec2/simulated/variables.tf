variable "instance_name" {
  type        = string
  description = "A friendly name for the simulated instance"
  default     = "auto-hello-instance"
}

variable "environment" {
  type        = string
  description = "Target deployment environment (dev, staging, prod)"
  default     = "dev"
}

variable "message" {
  type        = string
  description = "Custom message to output"
  default     = "Hello from IBM Infrastructure Automation Embedded Terraform!"
}
