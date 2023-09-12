module "node" {
  source = "git::https://github.com/raykrist/tf-nrec-node.git"

  name              = "storage_test"
  node_name         = "disktest"
  region            = var.region
  node_count        = 1
  ssh_public_key    = "~/.ssh/id_rsa.pub"
  allow_ssh_from_v6 = var.allow_ssh_from_v6
  allow_ssh_from_v4 = var.allow_ssh_from_v4
  network           = "IPv6"
  flavor            = "m1.small"
  image_name        = "GOLD Alma Linux 8"
  image_user        = "almalinux" 
  volume_size       = 5000
  volume_type       = "mass-storage-dcache"
}
