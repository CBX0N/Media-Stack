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
  cloud {
    organization = "cbxon"
    workspaces {
      name = "docker-stack"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

provider "linode" {
  token = var.linode_api_token
}

module "linode_instance" {
  source                   = "./modules/linode-instances"
  linode_instance_config   = var.linode_instance_config
  linode_instance_userData = base64encode(file("./cloud-cfg.yml"))
}

module "linode_fw" {
  source           = "./modules/linode-fw"
  linode_fw_config = var.linode_fw_config
  linode_ids       = [module.linode_instance.id]
  onprem_ip        = var.onprem_ip
  depends_on       = [module.linode_instance]
}

module "cloudflare_record" {
  source             = "./modules/cloudflare-records"
  cloudflare_zone_id = var.cloudflare_zone_id
  dns-records        = local.dns_records
  depends_on         = [module.linode_instance]
}