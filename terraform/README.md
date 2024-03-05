## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_yandex_cloud_network"></a> [yandex\_cloud\_network](#module\_yandex\_cloud\_network) | ./modules/tf-yc-network | n/a |
| <a name="module_yandex_compute_instance"></a> [yandex\_compute\_instance](#module\_yandex\_compute\_instance) | ./modules/tf-yc-instance | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | n/a | `any` | n/a | yes |
| <a name="input_custom_instance_disk_image_id"></a> [custom\_instance\_disk\_image\_id](#input\_custom\_instance\_disk\_image\_id) | n/a | `any` | n/a | yes |
| <a name="input_custom_instance_subnet_id"></a> [custom\_instance\_subnet\_id](#input\_custom\_instance\_subnet\_id) | n/a | `any` | n/a | yes |
| <a name="input_custom_instance_zone"></a> [custom\_instance\_zone](#input\_custom\_instance\_zone) | To module: yandex\_compute\_instance: | `any` | n/a | yes |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | n/a | `any` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | To get token make 'yc iam create-token' | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_internal_ip_vm-1"></a> [internal\_ip\_vm-1](#output\_internal\_ip\_vm-1) | Ссылаемся на output, который определен в ./modules/tf-yc-instance/ |
| <a name="output_subnets_info"></a> [subnets\_info](#output\_subnets\_info) | Useless info about all subnets |


## Notes
В этом модуле просили сделать что-то не понятное, поэтому он получился не очень:
1. У нас есть одна единственная сеть yandex_vpc_network: default;
2. Для неё запрашиваем data по имени default, что бы потом использовать 'default'

3. Берем вывод 'yc vpc subnets list' и хардкодим имена подсетей в переменные;
4. Из имен делаем set 'network_zone';
5. Затем дергаем data 'yandex_vpc_subnet' для каждой сети;
6. Выплёвываем дату в output.