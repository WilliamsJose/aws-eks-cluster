
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

# eks
variable "cluster_name" {
  description = "Default cluster name"
  type        = string
  default     = "eks-cluster"
}

variable "cluster_version" {
  description = "Default cluster version"
  type        = string
  default     = "1.29"
}

variable "cluster_publicly_accessible" {
  description = "Default cluster version"
  type        = bool
  default     = true
}

# vpc
variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "eks-vpc"
}

variable "vpc_cidr" {
  description = "Default VPC CIDR from Console"
  type        = string
  default     = "172.31.0.0/16"
}

variable "enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}
