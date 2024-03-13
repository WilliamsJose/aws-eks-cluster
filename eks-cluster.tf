module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name    = local.cluster_name
  cluster_version = "1.27"

  vpc_id                         = module.vpc.vpc_id
  subnet_ids                     = module.vpc.private_subnets
  cluster_endpoint_public_access = true

  # TODO add github info
  tags = {
    Environment = "Development"
    GithubRepo  = "YourRepoNameHere"
    GithubOrg   = "YourOrganizationGitNameHere"
  }

  # TODO add app configuration pods
  eks_managed_node_groups = {
    one = {
      name = "node-group-1"

      instance_types = ["t3.medium"]

      min_size     = 1
      max_size     = 5
      desired_size = 3
    }
  }
}
