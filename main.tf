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
