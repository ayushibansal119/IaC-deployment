rg_name           = "rg-ab-stage-CI-001"
location          = "CentralIndia"
vnet_name         = "vnet-ab-stage-CI-001"
vnet_add_space    = ["10.1.0.0/16"]
subnet_name       = "cluster-subnet"
subnet_add_prefix = ["10.1.21.0/21"]
cluster_name      = "aks-ab-stage-eus-001"
aks_sku           = "Free"
auto_upgrade      = "patch"
default_pool_name = "systempool"
vm_size           = "Standard_D2_v3"
kubelet_disk_type = "OS"

system_node_labels = {
  "type" = "system"
}

system_max_pods  = 100
userpool_name    = "userpool"
userpool_vm_size = "Standard_D2_v3"

userpool_node_labels = {
  type = "user"
}

nw_plugin     = "azure"
outbound_type = "loadBalancer"
nw_policy     = "azure"
identity_type = "SystemAssigned"
svc_cidr      = "172.17.0.0/21"
dns_svc_ip    = "172.17.0.10"
env           = "stage"
