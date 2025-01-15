# Terraform Module: Huawei Cloud CCE

This module provisions a Kubernetes cluster on Huawei Cloud's CCE (Cloud Container Engine).

## Usage

```hcl
module "cce" {
  source = "../terraform-cce-module"

  auth_url    = "https://iam.example.com/v3/auth"
  region      = "eu-west-1"
  access_key  = "your-access-key"
  secret_key  = "your-secret-key"
  project_name = "your-project"

  cluster_name      = "my-cluster"
  flavor_id         = "cce.s2.medium"
  cluster_version   = "v1.23.7-r0"
  vpc_id            = "vpc-"
  subnet_id         = "subnet-"
  cidr              = "/24"

  node_pool_name           = "default-pool"
  initial_node_count       = 2
  node_flavor              = "s3.large.2"
  node_availability_zone   = "Global-AZ"
  autoscaling_enable       = true
  min_node_count           = 1
  max_node_count           = 5
}