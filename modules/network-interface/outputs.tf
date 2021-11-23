output "network_id" {
  description = "The ID of network interface."
  value       = bizflycloud_network_interface.this.id
}

output "network_name" {
  description = "The name of network interface."
  value       = bizflycloud_network_interface.this.name
}

output "attached_server" {
  description = "The attached server of network interface."
  value       = bizflycloud_network_interface.this.attached_server
}

output "fixed_ip" {
  description = "The fixed IP of network interface."
  value       = bizflycloud_network_interface.this.fixed_ip
}

output "network_status" {
  description = "The status of network interface."
  value       = bizflycloud_network_interface.this.status
}

output "network_security_groups" {
  description = "List ID of security groups."
  value       = bizflycloud_network_interface.this.security_groups[*]
}

output "network_subnet_id" {
  description = "The subnet ID of network interface."
  value       = bizflycloud_network_interface.this.fixed_ips
}