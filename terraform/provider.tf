provider "yandex" {
  token     = var.tfvars_token
  folder_id = var.tfvars_folder_id
  zone      = var.tfvars_instance_subnet_id
}
