

resource "azurerm_virtual_network" "practice-vnet" {
  name                = var.vnet-name
  location            = azurerm_resource_group.practice-rg.location
  resource_group_name = azurerm_resource_group.var.rgname.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
    security_group = azurerm_network_security_group.practice-nsg.id
  }

  tags = {
    environment = var.tags
  }
}