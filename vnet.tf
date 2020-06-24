resource "azurerm_virtual_network" "srx_example" {
    name = "srx_example"
    location = azurerm_resource_group.srx_example.location
    resource_group_name = azurerm_resource_group.srx_example.name
    address_space = ["192.168.0.0/16"]
    subnet = []
}