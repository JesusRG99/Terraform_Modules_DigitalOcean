variable "name" {
  type = string
  description = "Kubernetes Cluster Name"
}
variable "region" {
  type = string
  description = "Kubernetes Cluster Region"
  default = "fra1"
}
variable "version" {
  type = string
  description = "Droplet Location"
}
variable "node_pool" {
  type = object({
    name = string
    size = string
    node_count = number
  })
  default = {
    default = "default-pool"
    size = "s-1vcpu-2gb"
    node_count = 1
  }
}