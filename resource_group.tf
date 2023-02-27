
resource "azurerm_resource_group" "example" {
  name     = local.resource_group_name
  location = local.location
  tags     = local.common_tags
}

