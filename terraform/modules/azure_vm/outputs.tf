output "public_ip" {
  value = azurerm_public_ip.this.ip_address
}

output "private_ip" {
  value = azurerm_network_interface.this.private_ip_address
}

output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "subnet_id" {
  value = azurerm_subnet.this.id
}

output "vm_id" {
  value = var.os_type == "linux" ? azurerm_linux_virtual_machine.linux_vm[0].id : azurerm_windows_virtual_machine.windows_vm[0].id
}

output "vm_name" {
  value = var.vm_name
}

