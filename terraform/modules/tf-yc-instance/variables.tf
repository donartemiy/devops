variable "name_vm" {
  type = string
}

variable "script" {
  description = "The path to the script"
  type        = string
}

variable "zone" {
  description = "Get value from root module"
  type        = string
}

variable "platform_id" {
  description = "Processor achitecture"
  type        = string
}

variable "interaption" {
  description = "Is VM interruptible?"
  type        = bool
}

variable "disk_image_id" {
  description = "Type and version OS"
  type        = string
}

variable "disk_size" {
  description = "Size of disk (GB)"
  type        = string
  default     = "20"
}

variable "subnet_id" {
  type = string
}


variable "external_ip_vm_1" {
  // Значение будет получено из модуля yandex_cloud_network
  // Синтаксис требует определить переменную тут
  description = "Public IP"
}
