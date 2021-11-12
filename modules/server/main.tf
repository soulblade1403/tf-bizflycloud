resource "bizflycloud_server" "this" {
  // count               = var.server_enabled == true ? var.server_count : 0
  // name                = format("%s-%s", var.server_name, (count.index ))
  name                = var.server_name
  flavor_name         = var.flavor_name
  ssh_key             = var.ssh_key
  os_type             = var.os_type
  os_id               = var.os_id
  category            = var.category
  availability_zone   = var.availability_zone
  root_disk_type      = var.root_disk_type
  root_disk_size      = var.root_disk_size
}
