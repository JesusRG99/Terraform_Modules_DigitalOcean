variable "image" {
  type = string
  description = "Droplet Image"
}
variable "name" {
  type = string
  description = "Droplet Name"
}
variable "region" {
  type = string
  description = "Droplet Location"
}
variable "size" {
  type = string
  description = "Droplet Size"
}
variable "ssh_keys" {
  type = list(string)
  description = "List of allowed SSH Keys"
}