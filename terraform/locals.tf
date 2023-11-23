locals {
  dns_records = {
    "root" = {
      name  = "@"
      type  = "A"
      value = module.linode_instance.ip
    },
    "Quantum-CNAME" = {
      name  = "Quantum"
      type  = "CNAME"
      value = var.dns_hostname
    },
    "Vertex-CNAME" = {
      name  = "Vertex"
      type  = "CNAME"
      value = var.dns_hostname
    }
  }
}