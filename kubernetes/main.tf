resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name   = var.cluster_name
  region = var.region
  version = var.cluster_version

  node_pool {
    name       = var.node_name
    size       = var.node_size
    node_count = var.node_count
  }
}