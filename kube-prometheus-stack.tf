resource "helm_release" "kube_prometheus_stack" {

  name             = "kube-prometheus-stack"
  namespace        = "monitoring"
  repository       = "https://prometheus-community.github.io/helm-charts"
  chart            = "kube-prometheus-stack"
  version          = "61.7.1"
  create_namespace = true

  set {
    name  = "prometheus.prometheusSpec.serviceMonitorSelector.matchLabels.app"
    value = "flask-app"
  }

} 