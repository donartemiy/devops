// ---------------------------------------------------------------------------------
# Статический внешний IP
variable "zone_id" {
  description = "Zone for allocating address"
  type        = string
}

resource "yandex_vpc_address" "addr" {
  description = "name_of_public_ip"

  external_ipv4_address {
    zone_id = var.zone_id
  }
}

output "external_ip_vm_1_output" {
  value = yandex_vpc_address.addr.external_ipv4_address[0].address
}
// ---------------------------------------------------------------------------------


// ---------------------------------------------------------------------------------
variable "network_zones" {
  type    = set(string)
  default = ["ru-central1-a", "ru-central1-b", "ru-central1-c", "ru-central1-d"]
}

data "yandex_vpc_network" "default" {
  name = "default"
}

data "yandex_vpc_subnet" "default" {
  for_each = var.network_zones
  name     = "${data.yandex_vpc_network.default.name}-${each.key}"
}

output "subnet_ids" {
  value = data.yandex_vpc_subnet.default
}
// ---------------------------------------------------------------------------------
