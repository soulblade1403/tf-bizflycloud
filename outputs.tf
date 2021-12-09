# VPC
output "vpc_cidr_subnet" {
  description = "List Name, CIDR Block, of VPC Network"
  value = format("%s - %s", module.vpc.vpc_name, module.vpc.vpc_cidr)
}

# Server
output "server_name_ipv4_status" {
  description = "List Name, Public IP, Status of Server(s)"
  value       = {
    for s in module.webserver:
      s.server_name => format("%s - %s", s.network_ip, s.server_status)
  }
}

