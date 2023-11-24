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
| [linode_instance.instance](https://registry.terraform.io/providers/linode/linode/2.9.7/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_linode_instance_config"></a> [linode\_instance\_config](#input\_linode\_instance\_config) | Configuration of Linode Instance | <pre>object({<br>    label      = string<br>    type       = string<br>    region     = string<br>    image      = string<br>    private_ip = bool<br>  })</pre> | n/a | yes |
| <a name="input_linode_instance_userData"></a> [linode\_instance\_userData](#input\_linode\_instance\_userData) | Cloud Init User Data | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_ip"></a> [ip](#output\_ip) | n/a |
