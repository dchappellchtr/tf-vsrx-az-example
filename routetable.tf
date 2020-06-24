resource "azurerm_route_table" "internal1" {
  name                = "internal1"
  location            = azurerm_resource_group.srx_example.location
  resource_group_name = azurerm_resource_group.srx_example.name

  route {
    name                   = "default"
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "192.168.2.4"
  }
}

resource "azurerm_route_table" "internal2" {
  name                = "internal2"
  location            = azurerm_resource_group.srx_example.location
  resource_group_name = azurerm_resource_group.srx_example.name

  route {
    name                   = "default"
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "192.168.3.4"
  }
}