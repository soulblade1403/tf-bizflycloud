# Local value
locals {
  tag_name = var.tag_names
}

# VPC
module "vpc" {
  source      = "../modules/vpc"
  vpc_name    = var.vpc_name
  description = var.description
  cidr        = var.cidr
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

# Network Interface
module "network" {
  source          = "../modules/network-interface"
  count           = length(module.webserver[*].server_id)
  net_name        = "semart-network-${count.index + 1}"
  network_id      = module.vpc.vpc_id
  attached_server = "${module.webserver[count.index].server_id}"
  action          = "attach_server"
}