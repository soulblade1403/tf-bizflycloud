resource "null_resource" "this" {
  provisioner "local-exec" {
    // interpreter = ["/bin/bash" ,"-c"]
    command = var.command
    on_failure = continue
  }
}