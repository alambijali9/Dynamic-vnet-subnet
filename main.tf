resource "azurerm_resource_group" "rg" {
  for_each = var.dyna
  name     = each.value.rg-name
  location = each.value.rg-location
}

resource "azurerm_virtual_network" "example" {
  for_each            = var.dyna
  name                = each.value.vnet-name
  location            = each.value.rg-location
  resource_group_name = each.value.rg-name
  address_space       = each.value.address_space

  dynamic "subnet" {
    for_each = each.value.subnets
    content {
      name             = subnet.value.name
      address_prefixes = subnet.value.address_prefixes
    }
  }

}

