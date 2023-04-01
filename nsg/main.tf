resource "azurerm_network_security_group" "practice-nsg" {
  name                = var.nsgname
  location            = azurerm_resource_group.practice-rg.location
  resource_group_name = azurerm_resource_group.var.rgname.name
}