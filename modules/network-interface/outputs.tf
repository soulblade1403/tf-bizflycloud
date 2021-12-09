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

# output "network_security_groups" {
#   description = "List ID of security groups."
#   value       = bizflycloud_network_interface.this.security_groups[*]
# }

output "network_subnet_id" {
  description = "The subnet ID of network interface."
  value       = element(bizflycloud_network_interface.this.fixed_ips, 0)
}

output "network_ip_address" {
  description = "The IP address of network interface."
  value       = element(bizflycloud_network_interface.this.fixed_ips, 1)
}

output "network_create_at" {
  description = "The created time of network interface."
  value       = bizflycloud_network_interface.this.created_at
}

output "network_updated_at" {
  description = "The updated time of network interface."
  value       = bizflycloud_network_interface.this.updated_at
}