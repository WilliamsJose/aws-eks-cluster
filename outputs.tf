
output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.eks.cluster_name
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_default_vpc.default.id
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = [aws_default_subnet.default_az1_private.id]
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = [aws_default_subnet.default_az1_public.id]
}

