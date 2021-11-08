# Server
# Create a new server with OS Image ID get from datasource
// data "bizflycloud_image" "this" {
//   distribution = "ubuntu"
//   version      = "20.04 x64"
//     // distribution = var.os_distribution
//     // version      = var.os_version
// }

module "webserver" {
  source = "../modules/server"
  // server_count        = var.server_count
  // server_name         = var.server_name
  // flavor_name         = var.flavor_name
  // ssh_key             = var.ssh_key
  // // ssh_key             = "${data.bizflycloud_ssh_key.sshkey.name}"
  // os_type             = var.os_type
  // os_id               = "${data.bizflycloud_image.image.id}"
  // category            = var.category
  // availability_zone   = var.availability_zone
  // root_disk_type      = var.root_disk_type
  // root_disk_size      = var.root_disk_size

  server_count        = 2
  name                = "web"
  flavor_name         = "1c_1g"
  ssh_key             = "${data.bizflycloud_ssh_key.sshkey.name}"
  os_type             = "image"
  os_id               = "${data.bizflycloud_image.this.id}"
  category            = "basic"
  availability_zone   = "HCM1"
  root_disk_type      = "SSD"
  root_disk_size      = "10"
}
