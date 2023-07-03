variable "rg_name" {
  type = string
}

variable "location" {
  type = string
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
