output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC ID"
}

output "private_subnets" {
  value       = module.vpc.private_subnets
  description = "Private Subnet ID"
}

output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "Public Subnet ID"
}

output "eks_cluster_name" {
  value       = local.cluster_name
  description = "EKS Cluster name"
}
