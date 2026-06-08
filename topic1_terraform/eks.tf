# ====================================================
# 用Terrafrom EKS module 建立EKS 叢集
# Workder Node 部署於 private subnet
# 再加上 Managed Node Group 來Handle AutoScaling
# ====================================================

module "eks" {

  source  = "terraform-aws-modules/eks/aws"

  version = "~> 20.0"



  cluster_name    = local.cluster_name 

  cluster_version = "1.30"



  cluster_endpoint_public_access = true
  


  vpc_id     = module.vpc.vpc_id

  subnet_ids = module.vpc.private_subnets



  enable_cluster_creator_admin_permissions = true



  eks_managed_node_groups = {

    general = {

      desired_size = 2

      min_size     = 1

      max_size     = 3



      instance_types = ["t3.small"]

      capacity_type  = "ON_DEMAND"

    }

  }

}
