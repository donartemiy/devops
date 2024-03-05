module "yandex_cloud_network" {
  source = "./modules/tf-yc-network"

  zone_id = "ru-central1-a"
}

module "yandex_compute_instance" {
  source = "./modules/tf-yc-instance"

  name_vm = "chapter5-lesson2-std-ext-003-024"
  zone    = "ru-central1-a"
  // Ubuntu 20.04 LTS "fd8t8vqitgjou20saanq"
  // Ubuntu 22.04 LTS "fd8vljd295nqdaoogf3g"
  disk_image_id = "fd8vljd295nqdaoogf3g"
  platform_id   = "standard-v1"
  interaption   = true
  // 25GB перебьет значение 20 из module/tf-yc-instance/vatiables
  disk_size = "25"
  subnet_id = "e9b...eig"
  script    = "./scripts/add-ssh.yaml"

  // Подхватываем значение из output дочернего модуля
  external_ip_vm_1 = module.yandex_cloud_network.external_ip_vm_1_output
}
