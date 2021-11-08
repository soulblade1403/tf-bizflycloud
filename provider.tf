# Init provider plugin
terraform {
  required_providers {
    bizflycloud = {
      source = "bizflycloud/bizflycloud"
      version = "0.0.9"
    }
  }
}

# Configure the BizFly Cloud Provider
provider "bizflycloud" {
  auth_method                   = "application_credential"
  region_name                   = "HCM"
  application_credential_id     = ""
  application_credential_secret = file(./secret)
}