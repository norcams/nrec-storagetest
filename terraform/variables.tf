# Variables

variable "region" {}

variable "name" {}

variable "allow_ssh_from_v6" {
  type    = list(string)
  default = []
}

variable "allow_ssh_from_v4" {
  type    = list(string)
  default = []
}

variable "allow_icmp_from_v6" {
  type    = list(string)
  default = ["::/0"]
}

variable "allow_icmp_from_v4" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "flavor" {
  default = "m1.medium"
}

variable "ssh_public_key" { default = "~/.ssh/id_rsa.pub" }

variable "network" {
  default = "IPv6"
}

variable "image_name" {
  default = "GOLD Alma Linux 8"
}

variable "volume_type" {
  default = "mass-storage-default"
}

variable "image_user" {
  default = "almalinux"
}

variable "metadata" {
  type = map
  default = {
    "name" = "nrec system test"
    "created_by" = "https://github.com/norcams/storage-test"
  }
}

variable "volume_size" {
  default = 1000
}
