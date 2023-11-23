variable "dns-records" {
  description = "map of dns records"
  type = map(object({
    name  = string
    type  = string
    value = string
    ttl   = optional(number, 1)
  }))
}

variable "cloudflare_zone_id" {
  description = "value of the Cloudflare zone ID"
  type        = string
  default     = null
}