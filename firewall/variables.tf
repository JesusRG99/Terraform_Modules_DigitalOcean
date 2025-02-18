variable "name" {
  type = string
  description = "Firewall Name"
}
variable "droplet_ids" {
  type = list(string)
  description = "Droplet ID"
}

variable "inbound_rule" {
  type = list(object({
    protocol         = string
    port_range       = optional(string)
    source_addresses = optional(list(string))
  }))
  description = "Inbound rules"
}

variable "outbound_rule" {
  type = list(object({
    protocol              = string
    port_range            = optional(string)
    destination_addresses = optional(list(string))
  }))
  description = "Outbound rules"
}
