terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
    github = {
      source = "integrations/github"
      version = "4.2.0"
    }
  }
}
provider "github" {
  token = "${var.token}"
  owner = "aleexpo"
}


provider "kubernetes" {
  host = "https://192.168.49.2:8443"

  client_certificate     = file("/home/vagrant/.minikube/profiles/minikube/client.crt")
  client_key             = file("/home/vagrant/.minikube/profiles/minikube/client.key")
  cluster_ca_certificate = file("/home/vagrant/.minikube/ca.crt")
}