resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name   = var.name
  region = var.region
  version = var.version

  node_pool {
    name       = var.node_pool.name
    size       = var.node_pool.size
    node_count = var.node_pool.node_count
  }
}