output "server_ids" {
  description = "The ID of servers."
  value       = bizflycloud_server.this.*.id
}

output "server_names" {
  description = "The name of servers."
  value       = bizflycloud_server.this.*.name
}

output "network_ips" {
  description = "The network IP of servers."
  value       = bizflycloud_server.this.*.wan_ipv4
}

output "server_status" {
  description = "The status of servers."
  value       = bizflycloud_server.this.*.status
}

output "server_volumes" {
  description = "A list of the attached block storage volumes."
  value       = bizflycloud_server.this.*.volume_ids[*]
}