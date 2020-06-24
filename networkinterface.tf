resource "azurerm_network_interface" "management" {
  name                = "mgmt-nic"
  location            = azurerm_resource_group.srx_example.location
  resource_group_name = azurerm_resource_group.srx_example.name
  

  ip_configuration {
    name                          = "managementconfiguration1"
    subnet_id                     = azurerm_subnet.external.id
    private_ip_address_allocation = "Static"
    private_ip_address = "192.168.1.4"
    public_ip_address_id = azurerm_public_ip.srx_example.id
  }
}
resource "azurerm_network_interface" "external" {
  name                = "external-nic"
  location            = azurerm_resource_group.srx_example.location
  resource_group_name = azurerm_resource_group.srx_example.name

  ip_configuration {
    name                          = "externalconfiguration1"
    subnet_id                     = azurerm_subnet.external.id
    private_ip_address_allocation = "Static"
    private_ip_address = "192.168.1.5"
  }
}
resource "azurerm_network_interface" "internal1" {
  name                = "internal1-nic"
  location            = azurerm_resource_group.srx_example.location
  resource_group_name = azurerm_resource_group.srx_example.name

  ip_configuration {
    name                          = "internalconfiguration1"
    subnet_id                     = azurerm_subnet.internal1.id
    private_ip_address_allocation = "Static"
    private_ip_address = "192.168.2.4"
  }
}

resource "azurerm_network_interface" "internal2" {
  name                = "internal2-nic"
  location            = azurerm_resource_group.srx_example.location
  resource_group_name = azurerm_resource_group.srx_example.name

  ip_configuration {
    name                          = "internalconfiguration2"
    subnet_id                     = azurerm_subnet.internal2.id
    private_ip_address_allocation = "Static"
    private_ip_address = "192.168.3.4"
  }
}

resource "azurerm_network_interface_security_group_association" "publicbbinding" {
  network_interface_id      = azurerm_network_interface.management.id
  network_security_group_id = azurerm_network_security_group.srx_public.id
}
