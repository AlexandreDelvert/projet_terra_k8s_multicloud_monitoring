######################
# GLOBAL / COMMUNES
######################

variable "project_name" {
  description = "Nom du projet"
  type        = string
  default     = "infra-hybride-devops"
}

variable "environment" {
  description = "Environnement de déploiement (dev/staging/prod)"
  type        = string
  default     = "dev"
}

variable "key_name" {
  description = "Nom de la vm déployée"
  type        = string
  default     = "vm_teraform_deploy"
}

variable "security_group_id" {
  description = "Groupe de sécurité"
  type = string
  default = ""
}

variable "os_type" {
  description = "Os déployé sur la vm"
  type = string
  default = "linux"
}

variable "vpc_id" {
  description = ""
  type = string
  default = ""
}

######################
# AWS CONFIG
######################

variable "aws_region" {
  description = "Région AWS"
  type        = string
  default     = "eu-west-3"
}

variable "aws_key_name" {
  description = "Nom de la clé SSH dans AWS"
  type        = string
  default     = ""
}

variable "aws_vpc_id" {
  description = "ID du VPC AWS"
  type        = string
  default     = ""
}

variable "aws_subnet_id" {
  description = "ID du subnet AWS"
  type        = string
}

variable "aws_access_key" {
  type        = string
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  type        = string
  description = "AWS Secret Key"
}

######################
# AZURE CONFIG
######################

variable "azure_subscription_id" {
  description = "ID de souscription Azure"
  type        = string
}

variable "azure_client_id" {
  description = "Azure Service Principal client ID"
  type        = string
}

variable "azure_client_secret" {
  description = "Azure Service Principal client secret"
  type        = string
  sensitive   = true
}

variable "azure_tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

variable "azure_location" {
  description = "Région Azure (ex: East US)"
  type        = string
  default     = "West Europe"
}

variable "azure_resource_group" {
  description = "Nom du groupe de ressources"
  type        = string
}

variable "azure_admin_user" {
  description = "Nom de l'utilisateur administrateur pour VM Azure"
  type        = string
}

variable "ssh_public_key" {
  description = "Contenu de la clé publique SSH"
  type        = string
  default = " "
}

locals {
  ssh_key_content = file("/home/adelvert/.ssh/id_rsa.pub")
}

variable "azure_admin_password" {
  description = "Mot de passe de l'utilisateur administrateur pour les VM Windows sur Azure"
  type        = string
  sensitive   = true
  default     = "admin"
}
