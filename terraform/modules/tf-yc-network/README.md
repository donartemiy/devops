## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.default](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/vpc_network) | data source |
| [yandex_vpc_subnet.aaaaaa](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/vpc_subnet) | data source |
| [yandex_vpc_subnet.vpc_subnets](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/vpc_subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_network_zone"></a> [network\_zone](#input\_network\_zone) | Yandex.Cloud network availability zones | `set(string)` | <pre>[<br>  "ru-central1-a",<br>  "ru-central1-b",<br>  "ru-central1-d"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bbbbbb"></a> [bbbbbb](#output\_bbbbbb) | n/a |
| <a name="output_yandex_vpc_subnets_info"></a> [yandex\_vpc\_subnets\_info](#output\_yandex\_vpc\_subnets\_info) | Yandex.Cloud Subnets map |
