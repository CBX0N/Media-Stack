## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 4.0 |
| <a name="requirement_linode"></a> [linode](#requirement\_linode) | 2.9.7 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudflare_record"></a> [cloudflare\_record](#module\_cloudflare\_record) | ./modules/cloudflare-records | n/a |
| <a name="module_linode_fw"></a> [linode\_fw](#module\_linode\_fw) | ./modules/linode-fw | n/a |
| <a name="module_linode_instance"></a> [linode\_instance](#module\_linode\_instance) | ./modules/linode-instances | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare_api_token"></a> [cloudflare\_api\_token](#input\_cloudflare\_api\_token) | value of the Cloudflare API token | `string` | n/a | yes |
| <a name="input_cloudflare_zone_id"></a> [cloudflare\_zone\_id](#input\_cloudflare\_zone\_id) | value of the Cloudflare zone ID | `string` | n/a | yes |
| <a name="input_dns_hostname"></a> [dns\_hostname](#input\_dns\_hostname) | Hostname to configure dns records for | `string` | n/a | yes |
| <a name="input_linode_api_token"></a> [linode\_api\_token](#input\_linode\_api\_token) | value of the Linode API token | `string` | n/a | yes |
| <a name="input_linode_fw_config"></a> [linode\_fw\_config](#input\_linode\_fw\_config) | Configuration of Linode Firewall with Inbound Firewall Rules | <pre>object({<br>    label           = string<br>    inbound_policy  = string<br>    outbound_policy = string<br>    inbound_rules = map(object({<br>      label         = string<br>      action        = string<br>      ipv4          = optional(list(string), [])<br>      ports         = string<br>      protocol      = string<br>      use_onprem_ip = optional(bool, false)<br>    }))<br>  })</pre> | n/a | yes |
| <a name="input_linode_instance_config"></a> [linode\_instance\_config](#input\_linode\_instance\_config) | Configuration of Linode Instance | <pre>object({<br>    label      = string<br>    type       = string<br>    region     = string<br>    image      = string<br>    private_ip = bool<br>  })</pre> | n/a | yes |
| <a name="input_onprem_ip"></a> [onprem\_ip](#input\_onprem\_ip) | value of OnPrem IP | `list(string)` | `[]` | no |
