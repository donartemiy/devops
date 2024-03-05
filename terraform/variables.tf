// Подхватываем значения из terraform.tfvars 
// Для 'provider' в root модуле
variable "tfvars_token" {
  description = "Enter token from 'yc iam create-token'"
}
variable "tfvars_cloud_id" {}
variable "tfvars_folder_id" {}
variable "tfvars_instance_subnet_id" {}
