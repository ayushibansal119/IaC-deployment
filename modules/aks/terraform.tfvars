rg_name           = "rg-poc-dev-eus-001"
location          = "East US"
cluster_name      = "aks-poc-dev-eus-001"
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
env           = "dev"
