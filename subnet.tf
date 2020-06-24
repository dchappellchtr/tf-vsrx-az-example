resource "azurerm_subnet" "external" {
    name = "external"
    resource_group_name = azurerm_resource_group.srx_example.name
    virtual_network_name = azurerm_virtual_network.srx_example.name
    address_prefixes = ["192.168.1.0/24"]
}

resource "azurerm_subnet" "internal1" {
    name = "internal1"
    resource_group_name = azurerm_resource_group.srx_example.name
    virtual_network_name = azurerm_virtual_network.srx_example.name
    address_prefixes = ["192.168.2.0/24"]
}

resource "azurerm_subnet" "internal2" {
    name = "internal2"
    resource_group_name = azurerm_resource_group.srx_example.name
    virtual_network_name = azurerm_virtual_network.srx_example.name
    address_prefixes = ["192.168.3.0/24"]
}