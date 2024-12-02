Note this for 3.68.0 version

This module is for Azure Vm.


Example main.tf (root)


 module "azurerm_virtual_machine" {
  source                  = "./modules/azurerm_virtual_machine"
  prefix                  = var.prefix
  location                = var.location
  resource_group_name     = module.azurerm_resource_group.resource_group_name
  network_interface_ids   = [module.azurerm_network_interface.nic_id]
  vm_size                 = var.vm_size
  ubuntu_publisher        = var.ubuntu_publisher
  ubuntu_offer            = var.ubuntu_offer
  ubuntu_sku              = var.ubuntu_sku
  ubuntu_version          = var.ubuntu_version
  disk_type               = var.disk_type
  disk_size_gb            = var.disk_size_gb
  admin_username          = var.admin_username
  admin_password          = module.key_vault_secret.secret_value 
  depends_on              = [module.key_vault_secret]  
}


You can pass values using moules,variables etc
