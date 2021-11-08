// output "server_ids" {
//   description = "The ID of servers."
//   value       = bizflycloud_server.this.*.id
// }

// output "server_names" {
//   description = "The name of servers."
//   value       = join(",",format("%s-%s", bizflycloud_server.this.*.name, bizflycloud_server.this.*.flavor_name))
// }

// output "network_ips" {
//   description = "The network IP of servers."
//   value       = join(",", bizflycloud_server.this.*.wan_ipv4[*])
// }

// output "server_status" {
//   description = "The status of servers."
//   value       = bizflycloud_server.this.*.status
// }