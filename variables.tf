variable "aci_tenant_name" {
  description = "Tenant name for the three-tier application."
  type        = string
}

variable "aci_username" {
  description = "Username for Cisco ACI authentication."
  type        = string
}

variable "aci_password" {
  description = "Password for Cisco ACI authentication."
  type        = string
  sensitive   = true
}

variable "aci_url" {
  description = "APIC URL for Cisco ACI."
  type        = string
}

variable "vsphere_user" {
  type        = string
  description = "The username for vSphere."
}

variable "vsphere_password" {
  type        = string
  description = "The password for vSphere."
  sensitive   = true
}

variable "vsphere_server" {
  type        = string
  description = "The hostname or IP address of the vCenter server."
}

variable "vsphere_datacenter" {
  type        = string
  description = "The name of the datacenter."
}

variable "vsphere_datastore" {
  type        = string
  description = "The name of the datastore."
}

variable "vsphere_vm_template" {
  type        = string
  description = "The name of the VM template."
}

variable "vsphere_vm_name" {
  type        = string
  description = "The name of the VM."
}

variable "vsphere_resource_pool" {
  type        = string
  description = "The name of the resource pool (for example: Cluster1/Resources)."
}

variable "vsphere_vm_portgroup" {
  type        = string
  description = "The name of the portgroup."
}

variable "vsphere_vm_cpu" {
  type        = number
  description = "The number of vCPUs."
  default     = 2
}

variable "vsphere_vm_memory" {
  type        = number
  description = "The amount of memory in MB."
  default     = 2048
}

variable "vsphere_vm_guest" {
  type        = string
  description = "The guest OS type."
  default     = "centos64Guest"
}

variable "vsphere_vm_disksize" {
  type        = number
  description = "The size of the disk in GB."
  default     = 20
}

variable "timeout" {
  description = "Timeout in minutes to wait for the virtual machine clone to complete."
  type        = number
  default     = 30
}

variable "linked_clone" {
  description = "Clone this virtual machine from a snapshot. Templates must have a single snapshot only in order to be eligible."
  type        = bool
  default     = false
}

variable "web_tier_count" {
  description = "Number of VMs deployed in the Web tier."
  type        = number
  default     = 0
}

variable "app_tier_count" {
  description = "Number of VMs deployed in the App tier."
  type        = number
  default     = 0
}

variable "db_tier_count" {
  description = "Number of VMs deployed in the DB tier."
  type        = number
  default     = 0
}
