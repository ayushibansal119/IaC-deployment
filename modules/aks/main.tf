resource "azurerm_kubernetes_cluster" "aks" {
  name                      = var.cluster_name
  location                  = var.location
  resource_group_name       = var.rg_name
  dns_prefix                = "aks-${var.env}"
  sku_tier                  = var.aks_sku
  automatic_channel_upgrade = var.auto_upgrade
  kubernetes_version        = var.kubernetes_version

  default_node_pool {
    name              = var.default_pool_name
    node_count        = 1
    vm_size           = var.vm_size
    kubelet_disk_type = var.kubelet_disk_type
    max_pods          = var.system_max_pods
    node_labels       = var.system_node_labels
  }

identity {
    type = var.identity_type
  }

  network_profile {
    network_plugin = var.nw_plugin
    outbound_type  = var.outbound_type
    network_policy = var.nw_policy
    service_cidr = var.svc_cidr
    dns_service_ip = var.dns_svc_ip
  }
}

  resource "azurerm_kubernetes_cluster_node_pool" "userpool" {
  name                  = var.userpool_name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size               = var.userpool_vm_size
  node_count            = 1
  enable_auto_scaling   = true
  min_count             = 1
  max_count             = 2
  max_pods              = 110
  node_labels           = var.userpool_node_labels
  depends_on = [
    azurerm_kubernetes_cluster.aks
  ]
}

