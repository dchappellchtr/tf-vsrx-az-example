resource "azurerm_public_ip" "srx_example" {
  name                = "srx_public_ip"
  resource_group_name = azurerm_resource_group.srx_example.name
  location            = azurerm_resource_group.srx_example.location
  allocation_method   = "Dynamic"
}