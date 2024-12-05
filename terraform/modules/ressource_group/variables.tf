variable "name" {
  description = "Nom de la ressource ou de l'application"
  type        = string
  default     = "ressource_group_WebApp1"  # Valeur par défaut, peut être modifiée au moment de l'application.
}

variable "location" {
    description = "où sera stocké le groupe de ressource"
    type = string
    default = "East US"
}