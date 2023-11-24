linode_fw_config = {
  label           = "cbx-fw-fr"
  inbound_policy  = "DROP"
  outbound_policy = "ACCEPT"
  inbound_rules = {
    Allow-HTTP-TCP = {
      label         = "Allow-HTTP-TCP"
      action        = "ACCEPT"
      ports         = "80"
      protocol      = "TCP"
      use_onprem_ip = true
    }
    Allow-HTTPS-TCP = {
      label    = "Allow-HTTPS-TCP"
      action   = "ACCEPT"
      ipv4     = ["0.0.0.0/0"]
      ports    = "443"
      protocol = "TCP"
    }
    Allow-SSH-PIP = {
      label         = "Allow-SSH-PIP"
      action        = "ACCEPT"
      ports         = "22"
      protocol      = "TCP"
      use_onprem_ip = true
    }
  }
}

linode_instance_config = {
  label      = "cbx-fe-fr"
  type       = "g6-standard-2"
  region     = "fr-par"
  image      = "linode/ubuntu22.04"
  private_ip = true
}