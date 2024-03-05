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
| [yandex_compute_instance.vm-1](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_disk_image_id"></a> [instance\_disk\_image\_id](#input\_instance\_disk\_image\_id) | Type and version OS | `string` | `"fd8vljd295nqdaoogf3g"` | no |
| <a name="input_instance_disk_size"></a> [instance\_disk\_size](#input\_instance\_disk\_size) | Size of disk (GB) | `string` | `"20"` | no |
| <a name="input_instance_interaption"></a> [instance\_interaption](#input\_instance\_interaption) | Is VM interruptible? | `bool` | `true` | no |
| <a name="input_instance_platform_id"></a> [instance\_platform\_id](#input\_instance\_platform\_id) | Processor achitecture | `string` | `"standard-v1"` | no |
| <a name="input_instance_zone"></a> [instance\_zone](#input\_instance\_zone) | Get value from root module | `string` | `"ru-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ip_address"></a> [ip\_address](#output\_ip\_address) | Отобразить IP ВМ |


## Scripts
Create user ansible with group:
```yaml
#cloud-config
ssh_pwauth: no
users:
  - name: ansible
    primary_group: ansible
    groups: sudo
    sudo: 'ALL=(ALL) NOPASSWD:ALL'
    shell: /bin/bash
    ssh-authorized-keys:
      - ssh-rsa AAAAB3N...5hBO+8=

```