terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.62.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-ab-shared-ci-001"
    storage_account_name = "saabsharedci001t"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

module "rg" {
  source   = "../../modules/rg"
  rg_name  = var.rg_name
  location = var.location
}

module "network" {
  source            = "../../modules/network"
  vnet_name         = var.vnet_name
  rg_name           = module.rg.rg_name
  location          = module.rg.location
  vnet_add_space    = var.vnet_add_space
  subnet_name       = var.subnet_name
  subnet_add_prefix = var.subnet_add_prefix
  depends_on = [
    module.rg,
  ]
}

module "aks" {
  source               = "../../modules/aks"
  rg_name              = module.rg.rg_name
  location             = module.rg.location
  cluster_name         = var.cluster_name
  vm_size              = var.vm_size
  userpool_vm_size     = var.userpool_vm_size
  dns_prefix           = "aks-${var.env}"
  dns_svc_ip           = var.dns_svc_ip
  env                  = var.env
  kubelet_disk_type    = var.kubelet_disk_type
  svc_cidr             = var.svc_cidr
  identity_type        = var.identity_type
  auto_upgrade         = var.auto_upgrade
  system_max_pods      = var.system_max_pods
  userpool_name        = var.userpool_name
  aks_sku              = var.aks_sku
  nw_policy            = var.nw_policy
  default_pool_name    = var.default_pool_name
  system_node_labels   = var.system_node_labels
  outbound_type        = var.outbound_type
  nw_plugin            = var.nw_plugin
  userpool_node_labels = var.userpool_node_labels

  depends_on = [
    module.rg,
    module.network
  ]
}