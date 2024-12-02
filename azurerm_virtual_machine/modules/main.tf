# modules/virtual_machine/main.tf
resource "azurerm_virtual_machine" "main" {
  name                  = "${var.prefix}-vm"
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = var.network_interface_ids
  vm_size               = var.vm_size

  storage_image_reference {
    publisher = var.ubuntu_publisher
    offer     = var.ubuntu_offer
    sku       = var.ubuntu_sku
    version   = var.ubuntu_version
  }

  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = var.disk_type
    disk_size_gb      = var.disk_size_gb
  }

  os_profile {
    computer_name  = "devteam"
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = {
    environment = "DevOps"
  }
}


