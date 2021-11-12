// variable "server_enabled" {
//   description = "Flag to control the server creation."
//   type        = bool
//   default     = true
// }
// variable "server_count" { 
//   description = "Number of servers."
//   type        = number
//   default     = 1
// }
variable "os_type" {
  description = "(Required) The type for create server root disk: image, snapshot, rootdisk."
  default = "image"
}
variable "os_id" {
  description = "(Required) The ID of OS - image ID, snapshot ID or volume rootdisk ID."
}
variable "server_name" {
  description = "(Required) The Server name."
}
variable "flavor_name" {
  description = "(Required) The flavor of your server. The format for flavor is xc_yg, x is number of CPU, and y is GB of RAM."
}
variable "ssh_key" {
  description = "(Optional) The name of SSH Key for the server."
  default = "secomm"
}
variable "category" {
  description = "(Required) The category of a server: basic, premium, enterprise."
  default = "basic"
}
variable "availability_zone" {
  description = "(Required) The availability zone of the server. Example: HN1, HN2, HCM1."
  default = "HCM1"
}
variable "root_disk_type" {
  description = "(Required) The type of Root disk volume: SSD or HDD."
  default = "HDD"
}
variable "root_disk_size" {
  description = "(Required) The size of Root disk volume."
  default = "30"
}