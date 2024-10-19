dyna = {
  vnet = {
    rg-name       = "rgtest"
    rg-location   = "West Europe"
    vnet-name     = "network1"
    vnet-location = "azurerm_resource_group.rg.location"
    address_space = ["10.0.0.0/16"]
    subnets = {
      snet1 = {
        name             = "subnet1"
        address_prefixes = ["10.0.1.0/24"]
      }
      snet2 = {
        name             = "subnet1"
        address_prefixes = ["10.0.1.0/24"]
      }

    }
  }
}
