variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "infra-network"
}

variable "net_cidr" {
  description = "Subnet structure"
  type = list(object({
    name   = string,
    zone   = string,
    prefix = string
  }))

  default = [
    { name = "infra-subnet-a", zone = "ru-central1-a", prefix = "10.129.1.0/24" },
  ]
}

variable "vm_1_name" {
  type    = string
  default = "vm-kittygram"
}

variable "vm_user" {
  description = "VM user"
  type = string
}

variable "ssh_key" {
  description = "SSH Public Key"
  type        = string
}

variable "yc_cloud_id" {
  description = "Cloud ID"
  default     = "b1g6fpliqlh4kbhl2pv4"
  type        = string
}

variable "yc_folder_id" {
  description = "Folder ID"
  default     = "b1gbcm70lghdf6mdptvq"
  type        = string
}

variable "platform_id" {
  type    = string
  default = "standard-v1"
}

variable "zone" {
  type    = string
  default = "ru-central1-a"
}

variable "disk_type" {
  type    = string
  default = "network-hdd"
}

variable "disk_size" {
  type    = number
  default = 20
}

variable "cores" {
  type    = string
  default = "2"
}

variable "memory" {
  type    = string
  default = "4"
}

variable "core_fraction" {
  type    = string
  default = "5"
}

variable "nat" {
  type    = bool
  default = true
}

variable "image_family" {
  type    = string
  default = "ubuntu-2404-lts-oslogin"
}
