output "windows_server_public_ip" {
  description = "Adresse IP publique du serveur Windows (AD)"
  value       = module.windows_server.public_ip
}

output "linux_k8s_server_public_ip" {
  description = "Adresse IP publique du serveur Linux avec Kubernetes"
  value       = module.linux_k8s_server.public_ip
}

output "monitoring_server_public_ip" {
  description = "Adresse IP publique du serveur de monitoring"
  value       = module.monitoring_server.public_ip
}

output "project_environment" {
  description = "Environnement actif"
  value       = var.environment
}
