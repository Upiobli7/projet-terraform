
# Paramètres de la base de données MariaDB
resource "azurerm_mysql_configuration" "mariadb_parameters" {
  name                = "max_allowed_packet"
  value               = "16777216"
  server_name         = azurerm_mysql_server.mariadb_server.name
  resource_group_name = azurerm_resource_group.example.name
}

# Serveur de base de données MariaDB
resource "azurerm_mysql_server" "mariadb_server" {
  name                         = "mariadb-server"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "10.1"
  sku_name                     = "B_Gen5_1"  # Exemple de SKU
  storage_mb                   = 5120  # Taille du stockage en Mo
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
}

# Groupe de ressources (si nécessaire)
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}

