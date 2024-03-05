// Create a new instance
resource "yandex_compute_instance" "vm-1" {
  name = var.name_vm
  // Не обязательные пераметры:
  zone        = var.zone
  platform_id = var.platform_id
  scheduling_policy {
    preemptible = var.interaption
  }

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.disk_image_id
      size     = var.disk_size
    }
  }

  // Сетевой интерфейс. Указываем сеть, к которой будет подключена ВМ
  // subnet_id соответсвует name default-ru-central1-a
  network_interface {
    subnet_id      = var.subnet_id
    nat            = true
    nat_ip_address = var.external_ip_vm_1
  }

  // Создание пользователя и групп
  metadata = {
    user-data = "${file(var.script)}"
  }
}

