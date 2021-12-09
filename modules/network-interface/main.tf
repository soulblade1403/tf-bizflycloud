# Create a new VPC Network
resource "bizflycloud_network_interface" "this" {
    name            = var.net_name
    network_id      = var.network_id
    attached_server = var.attached_server
    # fixed_ip        = var.fixed_ip
    action          = var.action
    # security_groups = var.sg
}