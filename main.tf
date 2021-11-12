# Server
module "webserver" {
  source = "./modules/server"
  count               = var.server_count
  server_name         = format("%s-%s", var.server_name, (count.index + 1))
  flavor_name         = var.flavor_name
  ssh_key             = var.ssh_key
  os_type             = var.os_type
  os_id               = "${data.bizflycloud_image.image.id}"
  category            = var.category
  availability_zone   = var.availability_zone
  root_disk_type      = var.root_disk_type
  root_disk_size      = var.root_disk_size
}
