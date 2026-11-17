resource "random_id" "deployment_id" {
  byte_length = 4
}

resource "local_file" "deployment_summary" {
  content = jsonencode({
    instance_name = var.instance_name
    environment   = var.environment
    message       = var.message
    deployment_id = random_id.deployment_id.hex
    timestamp     = timestamp()
  })
  filename = "${path.module}/deployment_${random_id.deployment_id.hex}.json"
}
