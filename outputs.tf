# Server
output "server_name_ipv4_status" {
  description = "List Name(s), Public IP(s), Status of Server(s)"
  value       = formatlist("%s => %s => %s", module.webserver.server_names, module.webserver.network_ips, module.webserver.server_status)
}

output "server_name_volume" {
  description = "A list of the attached block storage volumes"
  value       = formatlist("%s => %s", module.webserver.server_names, module.webserver.server_volumes)
}