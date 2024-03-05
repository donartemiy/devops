// Подхватываем значения переменных из output дочерних модулей
output "unusfull_subnet_info" {
  value = module.yandex_cloud_network.subnet_ids
}

output "public_ip" {
  value = module.yandex_cloud_network.external_ip_vm_1_output
}

output "private_ip" {
  value = module.yandex_compute_instance.ip_address
}
