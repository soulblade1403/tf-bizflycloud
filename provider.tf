# Init provider plugin
terraform {
  required_providers {
    bizflycloud = {
      source = "bizflycloud/bizflycloud"
      version = "0.0.12"
    }
  }
}

# Configure the BizFly Cloud Provider
provider "bizflycloud" {
  auth_method                   = var.auth_method
  region_name                   = var.region_name
  application_credential_id     = var.app_id
  application_credential_secret = file(var.app_secret)
}