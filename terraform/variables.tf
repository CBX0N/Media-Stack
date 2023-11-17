######################################################
# Description: This file contains the variables used in the Terraform configuration.
# Path: terraform/variables.tf
##################### Cloudflare #####################
variable "cloudflare_api_token" {
  description = "value of the Cloudflare API token"
  type        = string
  default     = null
}

variable "cloudflare_zone_id" {
  description = "value of the Cloudflare zone ID"
  type        = string
  default     = null
}

variable "cname-dns-records" {
  description = "value of the CNAME DNS records"
  type = map(object({
    record = string
    target = optional(string, "@")
    ttl    = optional(number, 1)
  }))
  default = {}
}
##################### Linode #####################
variable "linode_api_token" {
  type        = string
  default     = null
  description = "value of the Linode API token"
}