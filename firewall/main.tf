resource "digitalocean_firewall" "firewall" {
  name = var.name
  droplet_ids = var.droplet_ids

  dynamic "inbound_rule" {
    for_each = var.inbound_rule
    content {
      protocol         = inbound_rule.value.protocol
      port_range       = inbound_rule.value.port_range
      source_addresses = inbound_rule.value.source_addresses
    }
  }

  dynamic "outbound_rule" {
    for_each = var.outbound_rule
    content {
      protocol         = outbound_rule.value.protocol
      port_range       = outbound_rule.value.port_range
      destination_addresses = outbound_rule.value.destination_addresses
    }
  }
}