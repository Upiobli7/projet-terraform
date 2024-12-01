# Fichier principal pour décrire l'infrastructure
module "ressource_group" {
  source = "./modules/ressource_group"
  
}

module "app_service" {
  source = "./modules/app_service"
  tier = "Basic"
  size = "B1"
}


