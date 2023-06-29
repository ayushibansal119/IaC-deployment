variable "rg_name" {
  description = "Name of a resource group."
  type    = string
}

variable "location" {
  description = "Location of a resource group."
  type    = string
}

variable "vnet_name" {
  description = "Name for a virtual network"
  type = string
}

variable "vnet_add_space" {
  description = "provide virtual network address space"
  type = list
}

variable "subnet_name" {
    description = "Name of subnet"
    type = string
}

variable "subnet_add_prefix"{
    description = "Subnet address prefix"
    type = list
}

