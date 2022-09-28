resource "azurerm_resource_group" "rsg1" {
    name = "my_resource_group_1"
    location = "West US 2"
}

resource "azurerm_virtual_network" "network1" {
    name = "my_virtual_network_1"
    address_space = ["100.0.0.0/16"]
    location = azurerm_resource_group.rsg1.location
    resource_group_name = azurerm_resource_group.rsg1.name
}

resource "azurerm_subnet" "network1subnet1" {
    name = "my_subnet_1"
    resource_group_name = azurerm_resource_group.rsg1.name
    virtual_network_name = azurerm_virtual_network.network1.name
    address_prefixes = ["100.0.100.0/24"]
}
