output "server_id" {
  description = "The ID of servers."
  value       = bizflycloud_server.this.id
}

output "server_name" {
  description = "The name of servers."
  value       = bizflycloud_server.this.name
}

output "network_ip" {
  description = "A network IP of servers."
  value       = tolist(bizflycloud_server.this.wan_ipv4[*])[0]
}

output "network_ips" {
  description = "The network IPs of servers."
  value       = bizflycloud_server.this.wan_ipv4[*]
}

output "server_status" {
  description = "The status of servers."
  value       = bizflycloud_server.this.status
}

output "server_volumes" {
  description = "A list of the attached block storage volumes."
  value       = bizflycloud_server.this.volume_ids[*]
}