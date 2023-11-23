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
variable "linode_ids" {
  description = "Linode IDs to link FW"
  type        = list(string)
  default     = []
}

variable "onprem_ip" {
  description = "value of OnPrem IP"
  type        = list(string)
  default     = []
}