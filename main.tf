# Local value
locals {
  tag_name = var.tag_names
}

# Server
module "webserver" {
  source = "./modules/server"
  count               = var.server_count
  server_name         = format("%s-%s", local.tag_name, (count.index + 1))
  flavor_name         = var.flavor_name
  ssh_key             = var.ssh_key
  os_type             = var.os_type
  os_id               = "${data.bizflycloud_image.image.id}"
  category            = var.category
  availability_zone   = var.availability_zone
  root_disk_type      = var.root_disk_type
  root_disk_size      = var.root_disk_size
}

# generate SSH variables file for Ansible
resource "local_file" "ssh_vars" {
  content = templatefile("${path.module}/templates/ssh-vars.yml.tpl",
  {
    user         = var.ssh_user
    pub-key-path = var.pub_key
  })
 filename = var.ssh_vars_file
}

# Inventory config for Ansible
resource "local_file" "inventory_cfg" {
  content = templatefile("${path.module}/templates/hosts.tpl",
  {
    web-ip      = module.webserver[*].network_ip
    group-hosts = local.tag_name
    key-path    = var.pvt_key
  })
 filename = var.inventory_file
}

# Application playbook for Ansible
resource "local_file" "playbook" {
  content = templatefile("${path.module}/templates/laravel-pb.yml.tpl",
  {
    host = local.tag_name
  })
 filename = var.laravel_playbook_file
}