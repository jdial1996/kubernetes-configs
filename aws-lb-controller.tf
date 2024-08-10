
# resource "helm_release" "aws_loadbalancer_controller" {
#   count = var.create_lb_controller ? 1 : 0
#   depends_on = [
#     aws_eks_cluster.eks-cluster
#   ]

#   name             = "aws-load-balancer-controller"
#   namespace        = var.lb_controller_namespace
#   repository       = "https://aws.github.io/eks-charts"
#   chart            = "aws-load-balancer-controller"
#   version          = var.lb_controller_version
#   create_namespace = false

#   set {
#     name  = "clusterName"
#     value = var.cluster_name
#   }
#   set {
#     name  = "serviceAccount.create"
#     value = true
#   }
#   set {
#     name  = "serviceAccount.name"
#     value = var.lb_controller_service_account_name
#   }
# }