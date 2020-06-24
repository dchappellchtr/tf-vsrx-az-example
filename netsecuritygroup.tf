resource "azurerm_network_security_group" "srx_public" {
    name = "publicsecuritygroup"
    location = azurerm_resource_group.srx_example.location
    resource_group_name = azurerm_resource_group.srx_example.name

    security_rule {
        name = "SSH"
        priority = 300
        direction = "Inbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range = "22"
        source_address_prefix = "*"
        destination_address_prefix = "*"
    }

    security_rule {
        name = "HTTPS"
        priority = 301
        direction = "Inbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range = "443"
        source_address_prefix = "*"
        destination_address_prefix = "*"
    }

    security_rule {
        name = "HTTP"
        priority = 302
        direction = "Inbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range = "80"
        source_address_prefix = "*"
        destination_address_prefix = "*"
    }

    
}