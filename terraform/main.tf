module "windows_server" {
  source           = "./modules/azure_vm"
  vm_name          = "windows-ad-server"
  location         = var.azure_location
  vm_size          = "Standard_B2s" 
  os_type          = "windows"
  admin_username   = var.azure_admin_user
  admin_password   = var.azure_admin_password
  ssh_public_key   = file(var.ssh_public_key)
}


module "linux_k8s_server" {
  source           = "./modules/azure_vm"
  vm_name          = "linux-k8s-server"
  project_name   = var.project_name
  location         = "France Central"
  vm_size          = "Standard_B2s"
  os_type          = "linux"
  admin_username   = var.azure_admin_user
  ssh_public_key   = file(var.ssh_public_key)
}

module "monitoring_server" {
  source           = "./modules/aws_vm"
  vm_name          = "monitoring-server"
  ami_id           = "ami-0644165ab979df02d"  # Debian AMI
  instance_type    = "t3.micro"
  os_type          = var.os_type
  key_name         = var.aws_key_name
  region           = "eu-west-3"
  ssh_public_key   = file(var.ssh_public_key)
  security_group_id = var.security_group_id
}