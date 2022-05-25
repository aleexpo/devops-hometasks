resource "kubernetes_service" "nodeport" {
  metadata {
    name = "nodeport"
  }
  spec {
    selector ={
      "app" = var.app_name
    }
    port {
      node_port = var.node_port
      port= var.app_port
      target_port = var.app_port
    }
    type = "NodePort"
  }
  
}
resource "kubernetes_service" "static-site-loadbalancer" {
  metadata {
    name = var.service_name
  }
  spec {
    selector = {
      app = var.app_name
      cluster_ip = "10.101.7.86"
    }
    session_affinity = "ClientIP"

    port {
      port = var.app_port
      target_port = var.app_port
    }

    type = "LoadBalancer"
    external_ips = [ "10.101.7.86" ]
  }
}