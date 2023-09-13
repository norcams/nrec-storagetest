module "node" {
  source = "git::https://github.com/raykrist/tf-nrec-node.git"

  name              = var.name
  node_name         = var.node_name
  region            = var.region
  node_count        = var.ncount
  ssh_public_key    = var.ssh_public_key
  allow_ssh_from_v6 = var.allow_ssh_from_v6
  allow_ssh_from_v4 = var.allow_ssh_from_v4
  network           = var.network
  flavor            = var.flavor
  image_name        = var.image_name
  image_user        = var.image_user
  volume_size       = var.volume_size
  volume_type       = var.volume_type
}
