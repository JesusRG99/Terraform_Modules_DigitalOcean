variable "name" {
  type = string
  description = "Kubernetes Cluster Name"
}
variable "region" {
  type = string
  description = "Kubernetes Cluster Region"
  default = "fra1"
}
variable "cluster_version" {
  type = string
  description = "Droplet Location"
}
variable "node_size" {
  type = string
  default = "s-1vcpu-2gb"
}
variable "node_count" {
  type = number
  default = 1
}