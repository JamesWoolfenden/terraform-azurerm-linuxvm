
resource "azurerm_linux_virtual_machine" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  size                = var.size
  admin_username      = var.admin_user

  allow_extension_operations = false

  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  admin_ssh_key {
    username   = var.admin_user
    public_key = var.public_key
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.source_image_reference.publisher
    offer     = var.source_image_reference.offer
    sku       = var.source_image_reference.sku
    version   = var.source_image_reference.version
  }
}
