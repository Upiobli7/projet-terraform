# Variables pour app_service
variable "name" {
  description = "Nom de l'App Service"
  type        = string
  default = "mywebapp"
}

variable "app_service_plan_id" {
  description = "ID du Plan App Service auquel l'App Service est lié"
  type        = string
}

variable "name" {
  description = "Nom du plan App Service"
  type        = string
  default = "PlanApp"
}

variable "location" {
  description = "Région Azure"
  type        = string
  default = "eastus"
}

variable "resource_group_name" {
  description = "Nom du groupe de ressources Azure"
  type        = string
  default = "myRG"
}

variable "tier" {
  description = "Tier de l'App Service Plan (e.g., Free, Basic, Standard)"
  type        = string
  default = "Standard"
}

variable "size" {
  description = "Taille de l'App Service Plan (e.g., F1, B1, S1)"
  type        = string
  default = "S1"
}
