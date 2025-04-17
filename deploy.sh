#!/bin/bash

set -e  # Stoppe le script en cas d'erreur

cd terraform/

echo "📦 Initialisation Terraform..."
terraform init

echo "🔍 Plan Terraform..."
terraform plan -out=monplan.tfplan

echo "🚀 Déploiement Terraform..."
terraform apply monplan.tfplan

echo "✅ Déploiement terminé."

