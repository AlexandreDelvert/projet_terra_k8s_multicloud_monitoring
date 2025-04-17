variable "resource_group" {
  default = "rg-demo"
}

variable "location" {
  default = "West Europe"
}

variable "vm_name" {
  default = "vmdemo"
}

variable "admin_username" {
  default = "azureuser"
}

variable "ssh_public_key" {
  type        = string
  description = "Clé publique pour VM Linux"
  default     = null
}

variable "vm_size" {
  description = "Dimensionnement de la VM"
  type        = string
  default     = "Standard_B2s"
}

variable "os_type" {
  description = "Os installé sur la VM"
  type        = string
  default     = "linux"
}

variable "admin_password" {
  type        = string
  description = "Mot de passe pour VM Windows"
  default     = null
}

variable "project_name" {
  description = "Nom du projet pour nommer le resource group"
  type        = string
  default = "devops"
}

