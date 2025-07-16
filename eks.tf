# module "eks" {
#   source  = "terraform-aws-modules/eks/aws"
#   version = "20.37.1"

#   cluster_name                   = local.name
#   cluster_version                = "1.33"
#   cluster_endpoint_public_access = true

#   # IPV6
#   cluster_ip_family          = "ipv6"
#   create_cni_ipv6_iam_policy = true

#   cluster_addons = {
#     coredns    = {}
#     kube-proxy = {}
#     vpc-cni    = {}
#   }

#   vpc_id     = module.vpc.vpc_id
#   subnet_ids = module.vpc.private_subnets

#   eks_managed_node_groups = {
#     initial = {
#       instance_types = ["t3.medium"]

#       min_size     = 1
#       max_size     = 3
#       desired_size = 2
#     }
#   }

#   tags = local.tags
# }
