variable "net_name" {
    description = "(Required) The name of network interface."
}

variable "network_id" {
    description = "(Required) The Network ID of network interface."
}

variable "attached_server" {
    description = "(Optional) The attached server of network interface."
}

# variable "fixed_ip" {
#     description = "(Optional) The fixed IP of network interface."
# }

variable "action" {
    description = "(Optional) The action of network interface: attach_server, detach_server, add_firewall, remove_firewall."
}

# variable "sg" {
#     description = "(Optional) The list ID of of security groups."
# }
