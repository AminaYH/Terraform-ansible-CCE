variable "auth_url" {
  description = "Authentication URL for the Huawei Cloud API"
  type        = string
}

variable "region" {
  description = "Region for the cluster"
  type        = string
}

variable "access_key" {
  description = "Access key for Huawei Cloud API"
  type        = string
}

variable "secret_key" {
  description = "Secret key for Huawei Cloud API"
  type        = string
}

variable "project_name" {
  description = "Project name in Huawei Cloud"
  type        = string
}

variable "cluster_name" {
  description = "Name of the CCE cluster"
  type        = string
  default     = "example-cluster"
}

variable "flavor_id" {
  description = "Flavor ID for the cluster"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version for the cluster"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the cluster"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the cluster"
  type        = string
}

variable "cidr" {
  description = "CIDR for the container network"
  type        = string
}

variable "node_pool_name" {
  description = "Name of the node pool"
  type        = string
  default     = "default-node-pool"
}

variable "initial_node_count" {
  description = "Initial number of nodes in the pool"
  type        = number
  default     = 2
}

variable "node_flavor" {
  description = "Flavor for the worker nodes"
  type        = string
}

variable "node_availability_zone" {
  description = "Availability zone for the worker nodes"
  type        = string
}

variable "autoscaling_enable" {
  description = "Enable autoscaling for the node pool"
  type        = bool
  default     = true
}

variable "min_node_count" {
  description = "Minimum number of nodes in the pool"
  type        = number
  default     = 1
}

variable "max_node_count" {
  description = "Maximum number of nodes in the pool"
  type        = number
  default     = 5
}
