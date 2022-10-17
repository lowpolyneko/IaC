data "azurerm_dns_zone" "acmuic_app" {
  name                = "acmuic.app"
  resource_group_name = azurerm_resource_group.acm_general.name
}

