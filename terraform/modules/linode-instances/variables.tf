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

variable "linode_instance_userData" {
  description = "Cloud Init User Data"
  type        = string
  default     = null
}