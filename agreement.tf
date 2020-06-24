resource "azurerm_marketplace_agreement" "srx_agreement" {
    publisher = var.product_publisher
    offer = var.product_offer
    plan = var.product_name
}