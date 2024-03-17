module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id                         = aws_default_vpc.default.id
  subnet_ids                     = [aws_default_subnet.default_az1_private.id, aws_default_subnet.default_az2_private.id]
  cluster_endpoint_public_access = var.cluster_publicly_accessible

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

      # https://aws.amazon.com/pt/ec2/instance-types/t3/
      instance_types = ["t2.micro"]

      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }
}
