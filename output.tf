output "rg_id" {
  value = module.rg.rg_id
}

output "rg_name" {
  value = module.rg.rg_name
}

output "location" {
  value = module.rg.location
}

output "vnet_name" {
  value = module.network.vnet_name
}

output "vnet_add_space" {
  value = module.network.vnet_add_space
}

output "subnet_name" {
  value = module.network.subnet_name
}

output "cluster_name" {
  value = module.aks.cluster_name
}

# output "cluster_id" {
#   value = module.aks.cluster_id
# }