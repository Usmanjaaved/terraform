# modules/virtual_machine/variables.tf
variable "prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "location" {
  description = "The location of the resource"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "network_interface_ids" {
  description = "The list of network interface IDs"
  type        = list(string)
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
}

variable "ubuntu_publisher" {
  description = "The publisher of the Ubuntu image"
  type        = string
}

variable "ubuntu_offer" {
  description = "The offer of the Ubuntu image"
  type        = string
}

variable "ubuntu_sku" {
  description = "The SKU of the Ubuntu image"
  type        = string
}

variable "ubuntu_version" {
  description = "The version of the Ubuntu image"
  type        = string
}

variable "disk_type" {
  description = "The type of the disk"
  type        = string
}

variable "disk_size_gb" {
  description = "The size of the disk in GB"
  type        = number
}

variable "admin_username" {
  description = "The admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the VM"
  type        = string
}
