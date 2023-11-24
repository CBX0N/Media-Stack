## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_linode"></a> [linode](#requirement\_linode) | 2.9.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_linode"></a> [linode](#provider\_linode) | 2.9.7 |

## Resources

| Name | Type |
|------|------|
| [linode_firewall.fw](https://registry.terraform.io/providers/linode/linode/2.9.7/docs/resources/firewall) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_linode_fw_config"></a> [linode\_fw\_config](#input\_linode\_fw\_config) | Configuration of Linode Firewall with Inbound Firewall Rules | <pre>object({<br>    label           = string<br>    inbound_policy  = string<br>    outbound_policy = string<br>    inbound_rules = map(object({<br>      label         = string<br>      action        = string<br>      ipv4          = optional(list(string), [])<br>      ports         = string<br>      protocol      = string<br>      use_onprem_ip = optional(bool, false)<br>    }))<br>  })</pre> | n/a | yes |
| <a name="input_linode_ids"></a> [linode\_ids](#input\_linode\_ids) | Linode IDs to link FW | `list(string)` | `[]` | no |
| <a name="input_onprem_ip"></a> [onprem\_ip](#input\_onprem\_ip) | value of OnPrem IP | `list(string)` | `[]` | no |
