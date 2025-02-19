resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name   = var.name
  region = var.region
  version = var.version

  node_pool {
    name       = "default"
    size       = var.node_size
    node_count = var.node_count
  }
}