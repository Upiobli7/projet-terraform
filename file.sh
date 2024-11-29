#!/bin/bash

# Création des dossiers
mkdir -p portfolio/assets
mkdir -p terraform/resources
mkdir -p terraform/modules/app_service
mkdir -p terraform/modules/load_balancer
mkdir -p terraform/modules/network
mkdir -p terraform/modules/database

# Création des fichiers avec des commentaires initiaux
echo "<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <link rel='stylesheet' href='assets/style.css'>
    <title>Portfolio</title>
</head>
<body>
    <h1>Bienvenue sur mon portfolio</h1>
</body>
</html>" > portfolio/index.html

echo "/* Exemple de fichier CSS */" > portfolio/assets/style.css

# Création des fichiers Terraform
echo "# Fichier principal pour décrire l'infrastructure" > terraform/main.tf
echo "# Variables de configuration Terraform" > terraform/variables.tf
echo "# Définitions des sorties Terraform" > terraform/outputs.tf
echo "# Configuration du provider Azure" > terraform/provider.tf

for resource in app_service app_service_plan load_balancer network database storage_account; do
    echo "# Ressource pour $resource" > terraform/resources/${resource}.tf
done

for module in app_service load_balancer network database; do
    echo "# Module Terraform pour $module" > terraform/modules/$module/main.tf
    echo "# Variables pour $module" > terraform/modules/$module/variables.tf
    echo "# Outputs pour $module" > terraform/modules/$module/outputs.tf
done

echo "# Variables d'entrée spécifiques" > terraform/terraform.tfvars

# Fichier README.md à la racine
echo "# Documentation du projet, instructions, etc." > README.md

echo "Arborescence créée avec succès !"
