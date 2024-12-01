# Module Terraform pour app_service
resource "azurerm_app_service" "app_service" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.app_plan.id  # Lier l'App Service au plan

  site_config {
    always_on = true
  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    "WEBSITE_RUN_FROM_PACKAGE"           = "1"
  }
}

resource "azurerm_app_service_plan" "app_plan" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "Linux" # Utilisé pour un App Service basé sur Linux
  reserved            = true    # Indique que c'est un plan pour un App Service Linux

  sku {
    tier = var.tier # Exemple : "Standard"
    size = var.size # Exemple : "S1"
  }
}
