output "resource_group_name" {
  value = azurerm_resource_group.k8s.name
}

output "client_key" {
  value = nonsensitive(azurerm_kubernetes_cluster.k8s.kube_config.0.client_key)
}

output "client_certificate" {
  value = nonsensitive(azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate)
}

output "cluster_ca_certificate" {
  value = nonsensitive(azurerm_kubernetes_cluster.k8s.kube_config.0.cluster_ca_certificate)
}

output "cluster_username" {
  value = nonsensitive(azurerm_kubernetes_cluster.k8s.kube_config.0.username)
}

output "cluster_password" {
  value = nonsensitive(azurerm_kubernetes_cluster.k8s.kube_config.0.password)
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config_raw
  sensitive = true
}

output "host" {
  value = nonsensitive(azurerm_kubernetes_cluster.k8s.kube_config.0.host)
}