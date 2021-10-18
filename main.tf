resource "azurerm_resource_group" "RS1" {

    name = var.rgname1
    location = var.rglocation1
    
  
}

resource "azurerm_virtual_network" "VN1" {

  name                = var.vnet_name1
  location            = azurerm_resource_group.RS1.location
  resource_group_name = azurerm_resource_group.RS1.name
  address_space       = var.Vnet_address1
#   subnet {
#     name           = var.Subnet_name1
#     address_prefix = var.Subnet_address1
#   }
  
}

resource "azurerm_subnet" "Sub1" {
   name = var.Subnet_names[count.index]
   resource_group_name = azurerm_resource_group.RS1.name
   virtual_network_name = azurerm_virtual_network.VN1.name
   address_prefix = var.Subnet_address1[count.index]
   count = length(var.Subnet_names)

}


# resource "azurerm_storage_account" "sac1" {

#     name = var.storageactname
#     resource_group_name = azurerm_resource_group.RS1.name
#     location = azurerm_resource_group.RS1.location
#     account_tier = var.accounttier
#     account_replication_type = var.actreplytype

# }