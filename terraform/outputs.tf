output "cluster_id" {
  description = "ID of the CCE cluster"
  value       = huaweicloud_cce_cluster_v3.cluster.id
}

output "cluster_endpoint" {
  description = "Endpoint of the CCE cluster"
  value       = huaweicloud_cce_cluster_v3.cluster.endpoint
}

output "node_pool_id" {
  description = "ID of the node pool"
  value       = huaweicloud_cce_node_pool_v3.node_pool.id
}
