# locals {
#   newbits         = 8
#   netcount        = 6
#   all_subnets     = [for i in range(local.netcount) : cidrsubnet(var.vpc_cidr, local.newbits, i)]
#   public_subnets  = slice(local.all_subnets, 0, 3)
#   private_subnets = slice(local.all_subnets, 3, 6)
# }

resource "aws_default_vpc" "default" {}

resource "aws_default_subnet" "default_az1_public" {
  availability_zone = "us-east-1a"

  tags = {
    Name = "Default subnet for us-east-1a"
  }
}

resource "aws_default_subnet" "default_az1_private" {
  availability_zone = "us-east-1b"

  tags = {
    Name = "Default subnet for us-east-1b"
  }
}

resource "aws_default_subnet" "default_az2_private" {
  availability_zone = "us-east-1c"

  tags = {
    Name = "Default subnet for us-east-1c"
  }
}

# module "vpc" {
#   # public vpc module
#   source  = "terraform-aws-modules/vpc/aws"
#   version = "5.0.0"

#   # vpc name
#   name   = var.vpc_name
#   vpc_id = aws_default_vpc.default.id

#   # cidr = var.vpc_cidr
#   # availability zones
#   # azs = slice(data.aws_availability_zones.available.names, 0, 3)

#   # private_subnets = local.private_subnets
#   # public_subnets  = local.public_subnets

#   enable_nat_gateway   = var.enable_nat_gateway
#   single_nat_gateway   = var.single_nat_gateway
#   enable_dns_hostnames = var.enable_dns_hostnames

#   tags = {
#     "kubernetes.io/cluster/${var.cluster_name}" = "shared"
#   }

#   public_subnet_tags = {
#     "kubernetes.io/cluster/${var.cluster_name}" = "shared"
#     "kubernetes.io/role/elb"                    = 1
#   }

#   private_subnet_tags = {
#     "kubernetes.io/cluster/${var.cluster_name}" = "shared"
#     "kubernetes.io/role/internal-elb"           = 1
#   }
# }
