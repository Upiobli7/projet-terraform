# Fichier principal pour décrire l'infrastructure
module "ressource_group" {
  source = "./modules/ressource_group"
  
}

module "app_service" {
  source = "./modules/app_service"
  location = module.ressource_group.location
  resource_group_name = module.ressource_group.ressource_group_name
  tier = "Basic"
  size = "B1"
}

# modules/app_service/outputs.tf
output "app_service_url" {
  description = "URL de l'App Service"
  value       = module.app_service.default_site_hostname
}

