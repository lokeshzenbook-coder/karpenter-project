module "karpenter_irsa" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks"
  version = "~> 5.39"

  role_name = "karpenter-controller"

  attach_karpenter_controller_policy = true

  karpenter_controller_cluster_name = module.eks.cluster_name

  oidc_providers = {
    main = {
      provider_arn = module.eks.oidc_provider_arn

      namespace_service_accounts = [
        "karpenter:karpenter"
      ]
    }
  }
}
