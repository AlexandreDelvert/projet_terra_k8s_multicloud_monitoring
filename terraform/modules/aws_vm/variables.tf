variable "vm_name" {
  description = "Nom de la machine virtuelle AWS"
  type        = string
}

variable "ami_id" {
  description = "AMI à utiliser pour la VM"
  type        = string
}

variable "instance_type" {
  description = "Type d'instance EC2 (ex: t2.micro)"
  type        = string
}

variable "key_name" {
  description = "Nom de la clé SSH enregistrée sur AWS"
  type        = string
}

variable "region" {
  description = "Région AWS pour le déploiement"
  type        = string
}

variable "os_type" {
  description = "Type d'OS (linux/windows) - utilisé pour configurer la sécurité ou userdata"
  type        = string
  default     = "linux"
}

variable "ssh_public_key" {
  description = "Contenu de la clé publique SSH"
  type        = string
}

variable "security_group_id" {
  description = "ID d’un security group existant (optionnel si le module crée son propre SG)"
  type        = string
  default     = ""
}
