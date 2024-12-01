# Définitions des sorties Terraform
# Sortie de l'URL de l'App Service
output "app_service" {
  description = "URL de l'App Service"
  value       = module.app_service.default_site_hostname
}

