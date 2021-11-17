# Provider
auth_method = "application_credential"
region_name = "HCM"
app_id      = ""
app_secret  = "./secret"

# Locals tag_names
tag_names = "demo"

# Server
server_count        = 1
// server_name         = "test"
flavor_name         = "1c_1g"
ssh_key             = ""
os_type             = "image"
os_distribution     = "ubuntu"
os_version          = "20.04 x64"
category            = "basic"
availability_zone   = "HCM1"
root_disk_type      = "HDD"
root_disk_size      = "30"

# Local execute 
# Webserver vars
ssh_vars_file         = "./ansible/vars/ssh-demo.yml"
ssh_user              = "web"
pvt_key               = "/.ssh/demo"
pub_key               = "/.ssh/demo.pub"
inventory_file        = "./ansible/inventory/demo"
laravel_playbook_file = "./ansible/demo.yml"