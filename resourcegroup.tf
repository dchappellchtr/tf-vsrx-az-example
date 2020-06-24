resource "azurerm_resource_group" "srx_example" {
    name = var.resource_group_name
    location = var.location
}