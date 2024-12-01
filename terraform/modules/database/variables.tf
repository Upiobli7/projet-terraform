# Variables pour database
variable "prefix_name" {}

variable "vnet_id" {
  description = "Virtual network ID"
}

variable "subnet_ids" {
  type = list(string)
  description = "List of subnet IDs for deploying resources."
}

variable "webserver_sg_id" {
  type        = list(string)
  description = "Security group IDs for the webserver"
}

variable "storage_gb" {
  description = "Amount of storage space to allocate for the MariaDB server"
  default     = 5
}

variable "mariadb_version" {
  description = "Version of MariaDB to use"
  default     = "10.1"
}

variable "mariadb_instance_type" {
  description = "Type of instance for the MariaDB server (Azure offers specific SKU like B_Gen5_1)"
  default     = "B_Gen5_1"
}

variable "db_name" {
  description = "Name of the database"
  default = "database"
}

variable "is_multi_az" {
  description = "Set to true for high availability configuration (use zone-redundant storage)"
  default     = false
}

variable "storage_type" {
  description = "Storage type for the database"
  default     = "Standard"
}

variable "backup_retention_period" {
  description = "How long to retain backups (maximum 35 days for Azure)"
  default     = 7
}
