# Create a new server with OS Image ID get from datasource
data "bizflycloud_image" "image" {
  distribution = var.os_distribution
  version      = var.os_version
}

# # SSH key
# resource "bizflycloud_ssh_key" "sshkey" {
#   name = var.ssh_key
# }