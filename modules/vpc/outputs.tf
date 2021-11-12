output "vpc_id" {
  description = "The ID of VPC Network"
  value       = bizflycloud_server.this.id
}

output "vpc_name" {
  description = "The name of VPC Network"
  value       = bizflycloud_server.this.name
}

output "vpc_cidr" {
  description = "The CIDR Block of VPC Network"
  value       = bizflycloud_server.this.cidr
}

output "subnet" {
  description = "The subnet of VPC Network"
  value       = bizflycloud_server.this.id
}

output "availability_zones" {
  description = "The availability zones of VPC Network"
  value       = bizflycloud_server.this.id
}

output "gateway_ip" {
  description = "The IP gateway subnets of VPC Network."
  value       = bizflycloud_server.this.wan_ipv4
}