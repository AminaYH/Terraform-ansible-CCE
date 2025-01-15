provider "huaweicloud" {
  auth_url    = var.auth_url
  region      = var.region
  access_key  = var.access_key
  secret_key  = var.secret_key
  project_name = var.project_name
}

# probaly will be removed
resource "huaweicloud_cce_cluster_v3" "cluster" {
  name       = var.cluster_name
  cluster_type = "VirtualMachine"
  flavor_id  = var.flavor_id
  version    = var.cluster_version
  vpc_id     = var.vpc_id
  subnet_id  = var.subnet_id
  container_network {
    mode = "overlay_l2"
    cidr = var.cidr
  }
}

# pool node
resource "huaweicloud_cce_node_pool_v3" "node_pool" {
  name      = var.node_pool_name
  cluster_id = huaweicloud_cce_cluster_v3.cluster.id

  initial_node_count = var.initial_node_count
  flavor             = var.node_flavor
  available_zone     = var.node_availability_zone

  autoscaling {
    enable         = var.autoscaling_enable
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
  }
}
