resource "azurerm_subnet_route_table_association" "internal1" {
  subnet_id      = azurerm_subnet.internal1.id
  route_table_id = azurerm_route_table.internal1.id
}

resource "azurerm_subnet_route_table_association" "internal2" {
  subnet_id      = azurerm_subnet.internal2.id
  route_table_id = azurerm_route_table.internal2.id
}