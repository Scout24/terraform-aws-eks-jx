module "eks-jx" {
  source     = "jenkins-x/eks-jx/aws"
  vault_user = var.vault_user
}
