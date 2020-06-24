
resource "azurerm_virtual_machine" "vsrx" {
    name = "vsrx"
    location = azurerm_resource_group.srx_example.location
    resource_group_name = azurerm_resource_group.srx_example.name
    network_interface_ids = [azurerm_network_interface.management.id, azurerm_network_interface.external.id, azurerm_network_interface.internal1.id, azurerm_network_interface.internal2.id]
    primary_network_interface_id = azurerm_network_interface.management.id
    vm_size = var.vm_size

    storage_image_reference {
        publisher = var.product_publisher
        offer = var.product_offer
        sku = var.product_name
        version = var.srx_version
    }

    storage_os_disk {
        name = "srx_os"
        create_option = "FromImage"
        managed_disk_type = "Standard_LRS"
    }

    os_profile {
        computer_name = var.hostname
        admin_username = var.username
        admin_password = var.password
    }

    os_profile_linux_config {
        disable_password_authentication = false
    }

    plan {
        name = var.product_name
        publisher = var.product_publisher
        product = var.product_offer
    }

    depends_on = [
        azurerm_marketplace_agreement.srx_agreement
    ]
}