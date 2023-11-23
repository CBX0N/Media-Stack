resource "linode_firewall" "fw" {
  label           = var.linode_fw_config.label
  inbound_policy  = var.linode_fw_config.inbound_policy
  outbound_policy = var.linode_fw_config.outbound_policy
  dynamic "inbound" {
    for_each = var.linode_fw_config.inbound_rules
    content {
      label    = inbound.value.label
      action   = inbound.value.action
      ipv4     = inbound.value.use_onprem_ip != true ? inbound.value.ipv4 : var.onprem_ip
      ports    = inbound.value.ports
      protocol = inbound.value.protocol
    }
  }
  linodes = var.linode_ids
}
