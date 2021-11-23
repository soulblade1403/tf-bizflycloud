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
  net_name        = "test-interface"
  network_id      = module.vpc.vpc_id
  attached_server = module.webserver.server_id
  fixed_ip        = "10.10.0.0/22"
  action          = "attach_server"
  sg              = ["4b41c931-bf3d-443f-b311-df3817a3fbc0"]
  # server_id       = module.webserver.server_id
}
