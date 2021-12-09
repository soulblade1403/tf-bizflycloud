# Provider
auth_method = "application_credential"
region_name = "HCM"
app_id      = ""
app_secret  = "./.secret"

# VPC
vpc_name    = "test-vpc"
description = "Test VPC"
cidr        = "10.30.0.0/20"

# Locals tag_names
tag_names = "demo"

# Server
server_count        = 2
flavor_name         = "1c_1g"
ssh_key             = "secomm"
os_type             = "image"
os_distribution     = "ubuntu"
os_version          = "20.04 x64"
category            = "basic"
availability_zone   = "HCM1"
root_disk_type      = "HDD"
root_disk_size      = "30"
