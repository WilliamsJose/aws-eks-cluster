# Terraform - EKS Cluster

Currently this file just configure 3 EC2 instances for EKS testing, need changes to work with custom resources

[Provision an EKS Cluster tutorial](https://developer.hashicorp.com/terraform/tutorials/kubernetes/eks)

for custom resources and deploy:

[Manage Kubernetes custom resources](https://developer.hashicorp.com/terraform/tutorials/kubernetes/kubernetes-crd-faas)

and

[Manage Kubernetes resources via Terraform](https://developer.hashicorp.com/terraform/tutorials/kubernetes/kubernetes-provider?variants=kubernetes%3Aeks)

### Requirements 
- AWS account
- Terraform CLI installed
- AWS CLI installed
- Kubernetes CLI installed
- kubectl installed
- configure aws access keys vars from Security Credentials:
  > export AWS_ACCESS_KEY_ID=[your-key-id]   
  > export AWS_SECRET_ACCESS_KEY=[your-key-secret]

### Run
```shell
  terraform init
  terraform apply
```
