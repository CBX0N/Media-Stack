######################################################
# Description: This file contains the variables used in the Terraform configuration.
# Path: terraform/variables.tf
##################### Cloudflare #####################
variable "cloudflare_api_token" {
  description = "value of the Cloudflare API token"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "value of the Cloudflare zone ID"
  type        = string
}

variable "dns_hostname" {
  description = "Hostname to configure dns records for"
  type        = string
}

##################### Linode #####################
variable "linode_api_token" {
  description = "value of the Linode API token"
  type        = string
}

variable "linode_fw_config" {
  description = "Configuration of Linode Firewall with Inbound Firewall Rules"
  type = object({
    label           = string
    inbound_policy  = string
    outbound_policy = string
    inbound_rules = map(object({
      label         = string
      action        = string
      ipv4          = optional(list(string), [])
      ports         = string
      protocol      = string
      use_onprem_ip = optional(bool, false)
    }))
  })
}

variable "linode_instance_config" {
  description = "Configuration of Linode Instance"
  type = object({
    label      = string
    type       = string
    region     = string
    image      = string
    private_ip = bool
  })
}

variable "onprem_ip" {
  description = "value of OnPrem IP"
  type        = list(string)
  default     = []
}