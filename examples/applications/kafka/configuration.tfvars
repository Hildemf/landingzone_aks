landingzone = {
  backend_type        = "azurerm"
  level               = "level4"
  key                 = "kafka"
  global_settings_key = "cluster_aks" # Update accordingly based on the configuration file of your AKS cluster landingzone.key
  tfstates = {
    cluster_aks = {
      level   = "lower"                                       # Update accordingly based on the configuration file of your AKS cluster landingzone.key
      tfstate = "204-private-cluster_landingzone_aks.tfstate" # Update accordingly based on the value you used to deploy you aks cluster with the rover -tfstate <value>
    }
  }
}

landingzone_key = "cluster_aks"
cluster_key     = "cluster_re1"

namespaces = {
  fluxcd = {
    name = "argocd"
  }
}

helm_charts = {
  argocd = {
    name       = "argo"
    repository = "https://argoproj.github.io/argo-helm"
    chart      = "argo-cd"
    namespace  = "argocd"
  }
}