terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.0"
    }
    linode = {
      source  = "linode/linode"
      version = "2.9.7"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

provider "linode" {
  token = var.linode_api_token
}

resource "linode_instance" "stack-host" {
  label  = "cbx-stack-fr-par"
  type   = "g6-standard-4"
  region = "fr-par"
  image  = "linode/ubuntu22.04"
  private_ip = true
  metadata {
    user_data = base64encode(file("../cloud-cfg.yml"))
  }
}

resource "linode_firewall" "fw" {
  label = "cbx-fw-fr-par"
  inbound_policy = "DROP"
  outbound_policy = "ACCEPT"

  inbound {
    label = "Allow-PLEX-TCP"
    action = "ACCEPT"
    ipv4 = [ "0.0.0.0/0" ]
    ports = "32400"
    protocol = "TCP"
  }

  inbound {
    label = "Allow-HTTP-TCP"
    action = "ACCEPT"
    ipv4 = [ "77.98.5.189/32" ]
    ports = "80"
    protocol = "TCP"
  }
  inbound {
    label = "Allow-HTTPS-TCP"
    action = "ACCEPT"
    ipv4 = [ "0.0.0.0/0" ]
    ports = "443"
    protocol = "TCP"
  }

  inbound {
    label = "Allow-SSH-PIP"
    action = "ACCEPT"
    ipv4 = [ "77.98.5.189/32" ]
    ports = "22"
    protocol = "TCP"
  }

  inbound {
    label = "Allow-FF-TCP"
    action = "ACCEPT"
    ipv4 = [ "77.98.5.189/32" ]
    ports = "3001"
    protocol = "TCP"
  }

  linodes = [ linode_instance.stack-host.id ]
}

resource "cloudflare_record" "root-a-record" {
  zone_id = var.cloudflare_zone_id
  name    = "@"
  value   = linode_instance.stack-host.ip_address
  type    = "A"
  ttl     = 1
  depends_on = [ linode_instance.stack-host ]
}

resource "cloudflare_record" "cname-record" {
  for_each   = var.cname-dns-records
  zone_id    = var.cloudflare_zone_id
  name       = each.value.record
  type       = "CNAME"
  value      = each.value.target == "@" ? cloudflare_record.root-a-record.hostname : each.value.target
  ttl        = each.value.ttl
  depends_on = [cloudflare_record.root-a-record]
}