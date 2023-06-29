variable "rg_name" {
  description = "Name of resource group to deploy viertual network."
  type= string
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type = string
}

variable "location" {
  description = "Location of virtaual network."
  type = string
}

variable "vnet_add_space" {
  description = "Address space for vnet"
  type = list
}

variable "subnet_name" {
  description = "Name of the subnet"
  type = string
}

variable "subnet_add_prefix" {
  description = "Value for the subnet address prefix"
  type = list
}