module "node" {
  source = "git::https://github.com/raykrist/tf-nrec-node.git"

  name              = "storage_test"
  node_name         = "disktest"
  region            = "bgo"
  node_count        = 1
  ssh_public_key    = "~/.ssh/id_rsa.pub"
  allow_ssh_from_v6 = ["2001:700:2:8200::205a/48"]
  allow_ssh_from_v4 = ["158.39.75.100/32"]
  network           = "IPv6"
  flavor            = "m1.small"
  image_name        = "GOLD Alma Linux 8"
  image_user        = "almalinux" 
  volume_size       = 5000
  volume_type       = "mass-storage-dcache"
}
