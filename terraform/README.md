## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 4.0 |
| <a name="requirement_linode"></a> [linode](#requirement\_linode) | ~> 1.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.18.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.cname-record](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_record.root-a-record](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare_api_token"></a> [cloudflare\_api\_token](#input\_cloudflare\_api\_token) | value of the Cloudflare API token | `string` | `null` | no |
| <a name="input_cloudflare_zone_id"></a> [cloudflare\_zone\_id](#input\_cloudflare\_zone\_id) | value of the Cloudflare zone ID | `string` | `null` | no |
| <a name="input_cname-dns-records"></a> [cname-dns-records](#input\_cname-dns-records) | value of the CNAME DNS records | <pre>map(object({<br>    record = string<br>    target = optional(string, "@")<br>    ttl    = optional(number, 1)<br>  }))</pre> | `{}` | no |
| <a name="input_linode_api_token"></a> [linode\_api\_token](#input\_linode\_api\_token) | value of the Linode API token | `string` | `null` | no |
| <a name="input_root-a-record-target"></a> [root-a-record-target](#input\_root-a-record-target) | value of the root A record target | `string` | `null` | no |

## Outputs

No outputs.