terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "1.24.3"
    }
    aci = {
      source  = "CiscoDevNet/aci"
      version = "= 1.2.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.10.0"
    }
  }
}

provider "vsphere" {
  user                 = var.vsphere_user
  password             = var.vsphere_password
  vsphere_server       = var.vsphere_server
  allow_unverified_ssl = true
}

provider "aci" {
  username = var.aci_username
  password = var.aci_password
  url      = var.aci_url
  insecure = true
}
