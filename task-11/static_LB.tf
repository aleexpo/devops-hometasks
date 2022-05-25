resource "kubernetes_service" "static-site-loadbalancer" {
  metadata {
    name = var.service_name
  }
  spec {
    selector = {
      app = var.app_name
    }
    session_affinity = "ClientIP"

    port {
      port = var.app_port
      target_port = var.app_port
    }

    type = "LoadBalancer"
  }
}
#resource "kubernetes_service" "nodeport" {
#  metadata {
#    name = "nodeport"
#  }
#  spec {
#    selector ={
#      "app" = var.app_name
#    }
#    port {
#      node_port = var.node_port
#      port= var.app_port
#      target_port = var.app_port
#    }
#    type = "NodePort"
#  }
#  
#}