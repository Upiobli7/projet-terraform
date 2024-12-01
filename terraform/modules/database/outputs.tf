# Outputs pour database
output "host" {
  value = azurerm_mysql_server.mariadb_server.fqdn
}

output "username" {
  value = azurerm_mysql_server.mariadb_server.administrator_login
}
