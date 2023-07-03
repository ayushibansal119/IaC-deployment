variable "rg_name" {
  description = "Name of a resource group."
  type        = string
}

variable "location" {
  description = "Location of a resource group."
  type        = string
}

variable "vnet_name" {
  description = "Name for a virtual network"
  type        = string
}

variable "vnet_add_space" {
  description = "provide virtual network address space"
  type        = list(any)
}

variable "subnet_name" {
  description = "Name of subnet"
  type        = string
}

variable "subnet_add_prefix" {
  description = "Subnet address prefix"
  type        = list(any)
}

variable "cluster_name" {
  type = string
}

variable "aks_sku" {
  type = string
}

variable "auto_upgrade" {
  type = string
}

variable "default_pool_name" {
  type = string
}

variable "kubelet_disk_type" {
  type = string
}

variable "system_node_labels" {
  type = map(string)
}

variable "system_max_pods" {
  type = number
}

variable "vm_size" {
  type = string
}

variable "userpool_name" {
  type = string
}

variable "userpool_vm_size" {
  type = string
}

variable "kubernetes_version" {
  default = null
}

variable "dns_prefix" {
  type    = string
  default = null
}

variable "svc_cidr" {
  type = string
}

variable "dns_svc_ip" {

}

variable "nw_plugin" {
  type = string
}

variable "outbound_type" {
  type = string
}

variable "nw_policy" {
  type = string
}

variable "identity_type" {
  type = string
}

variable "userpool_node_labels" {
  type = map(string)
}

variable "env" {
  type = string
}


