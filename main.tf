
provider "aws" {
  region = var.region
}

provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
}

data "aws_availability_zones" "available" {}

# TODO change your custer app name
locals {
  cluster_name = "eks"
}

# Call apply for all k8s files after EKS created
# resource "null_resource" "apply_kubernetes_manifests" {
#   provisioner "local-exec" {
#     command = "kubectl apply -f kubernetes/"
#   }

#   depends_on = [module.eks]
# }
