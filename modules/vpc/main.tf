# Create a new VPC Network
resource "bizflycloud_vpc_network" "this" {
    name        = var.vpc_name
    description = var.description
    cidr        = var.cidr
    is_default  = false
}