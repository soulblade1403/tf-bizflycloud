output "vpc_id" {
  description = "The ID of VPC Network"
  value       = bizflycloud_vpc_network.this.id
}

output "vpc_name" {
  description = "The name of VPC Network"
  value       = bizflycloud_vpc_network.this.name
}

output "vpc_cidr" {
  description = "The CIDR Block of VPC Network"
  value       = bizflycloud_vpc_network.this.cidr
}

output "availability_zones" {
  description = "The availability zones of VPC Network"
  value       = bizflycloud_vpc_network.this.availability_zones
}

##### Output Subnet #####
output "project_id" {
  description = "The project id subnets of VPC Network."
  value       = element(bizflycloud_vpc_network.this.subnets, 0)
}

output "ip_version" {
  description = "The project id subnets of VPC Network."
  value       = element(bizflycloud_vpc_network.this.subnets, 1)
}

output "gateway_ip" {
  description = "The IP gateway subnets of VPC Network."
  value       = element(bizflycloud_vpc_network.this.subnets, 2)
}

output "allocation_pools" {
  description = "The allocation pools subnets of VPC Network."
  value       = element(bizflycloud_vpc_network.this.subnets, 3)
}