# Configure the BizFly Cloud Provider
variable "auth_method" { default = "application_credential" }
variable "region_name" { default = "HCM" }
variable "app_id" {}
variable "app_secret" {}

# Local value
variable "tag_names" { type = string }

# Configure Server
variable "server_count" { default = 1 }
// variable "server_name" {}
variable "flavor_name" {}
variable "ssh_key" {}
variable "os_type" {}
variable "os_distribution" {
  description = "(Optional) A list of the attached block storage volumes."
  default = "ubuntu"
}
variable "os_version" {
  description = "(Optional) The version of OS."
  default = "20.04 x64"
}
variable "category" {}
variable "availability_zone" {}
variable "root_disk_type" {}
variable "root_disk_size" {}

# Server vars file
variable "ssh_vars_file" {}
variable "ssh_user" {}
variable "pub_key" {}
variable "pvt_key" {}