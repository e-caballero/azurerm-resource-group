
resource "azurerm_resource_group" "resource_group" {
  name     = local.resource_group_name
  location = vars.location
  tags     = local.common_tags
}

