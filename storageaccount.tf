resource "azurerm_storage_account" "srx_example" {
    name = var.storage_account_name
    location = azurerm_resource_group.srx_example.location
    resource_group_name = azurerm_resource_group.srx_example.name
    account_tier = "Standard"
    account_replication_type = "LRS"

}