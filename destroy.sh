#!/bin/bash

set -e

cd terraform/

echo "⚠️ Destruction des ressources Terraform..."
terraform destroy -auto-approve

echo "🧹 Nettoyage des fichiers Terraform..."
rm -f monplan.tfplan
rm -rf .terraform .terraform.lock.hcl

echo "✅ Destruction terminée."

