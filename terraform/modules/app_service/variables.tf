# Nom de l'App Service
variable "name" {
  description = "Nom de l'App Service et du Plan App Service"
  type        = string
  default = "MyWebAppUrbain"
}


variable "location" {
  description = "La région dans laquelle l'App Service et le Plan App Service seront créés"
  type        = string
  default = "France Central"
}


variable "resource_group_name" {
  description = "Nom du groupe de ressources dans lequel l'App Service et le Plan App Service seront déployés"
  type        = string
  default = "ressource_group_WebApp"
}

variable "tier" {
  description = "Niveau du plan App Service (par exemple : 'Basic', 'Standard', 'Premium')"
  type        = string
  default     = "Basic" 
}


variable "size" {
  description = "Taille de l'instance du Plan App Service (par exemple : 'B1', 'S1', 'P1v2')"
  type        = string
  default     = "B1"    
}


# Paramètre permettant de désactiver ou activer le stockage spécifique à l'App Service
variable "enable_app_service_storage" {
  description = "Activer ou désactiver le stockage spécifique à l'App Service (true/false)"
  type        = bool
  default     = false  # Valeur par défaut
}

# Activer ou non l'option 'always_on' pour maintenir l'application en ligne en permanence
variable "always_on" {
  description = "Activer l'option 'always_on' pour l'App Service"
  type        = bool
  default     = true   # Valeur par défaut
}

# Nom du plan App
variable "plan_app_name" {
  description = "Nom de l'App Service"
  type        = string
  default = "MyPlanApp"
}
