## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.0 |

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.dns-records](https://registry.terraform.io/providers/cloudflare/cloudflare/4.0/docs/resources/record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare_zone_id"></a> [cloudflare\_zone\_id](#input\_cloudflare\_zone\_id) | value of the Cloudflare zone ID | `string` | `null` | no |
| <a name="input_dns-records"></a> [dns-records](#input\_dns-records) | map of dns records | <pre>map(object({<br>    name  = string<br>    type  = string<br>    value = string<br>    ttl   = optional(number, 1)<br>  }))</pre> | n/a | yes |