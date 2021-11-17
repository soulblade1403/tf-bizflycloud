# Server
output "server_name_status" {
  description = "List Name(s), Status of Server(s)"
  value       = {
    for s in module.webserver:
      s.server_name => s.server_status
  }
}

output "server_name_ipv4_status" {
  description = "List Name(s), Public IP(s) of Server(s)"
  value       = {
    for s in module.webserver:
      s.server_name => s.network_ips
  }
}