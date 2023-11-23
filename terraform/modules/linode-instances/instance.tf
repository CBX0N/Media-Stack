resource "linode_instance" "instance" {
  label      = var.linode_instance_config.label
  type       = var.linode_instance_config.type
  region     = var.linode_instance_config.region
  image      = var.linode_instance_config.image
  private_ip = var.linode_instance_config.private_ip

  dynamic "metadata" {
    for_each = var.linode_instance_userData != null ? [1] : []
    content {
      user_data = var.linode_instance_userData
    }
  }
}