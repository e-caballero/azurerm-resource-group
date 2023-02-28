
---

# azurerm_resource_group

Manages a Resource Group.

-> **Note:** Azure automatically deletes any Resources nested within the Resource Group when a Resource Group is deleted.

-> Version 2.72 and later of the Azure Provider include a Feature Toggle which can error if there are any Resources left within the Resource Group at deletion time. This Feature Toggle is disabled in 2.x but enabled by default from 3.0 onwards, and is intended to avoid the unintentional destruction of resources managed outside of Terraform (for example, provisioned by an ARM Template). See [the Features block documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs#features) for more information on Feature Toggles within Terraform.

## Example Usage

```hcl
resource "azurerm_resource_group" "example" {
source = "git::https://github.com/erikcaballero/azure-resource-group?ref=v1.0"

# Required Inputs
location                  = var.location
count_num                 = var.index
environment               = var.environment
application_id            = "S123456"
component_name            = "Comp name"
application_owner         = "example team1 manager fname lname"
application_owner_email   = "bob@company.com"
application_team          = "Team1"
application_team_email    = "team1@company.com
application_team_slack    = "https://app.slack.com/huddle/1234/123"
application_teams_channel = "https://teams.microsoft.com/l/team/1234"
project                   = "Sample Project"
external                  = var.external
cost_center               = "13245678"
compliance                = "none"

# Optional Inputs
additional_tags           = []
description               = "This is to provide a sample"
}
```


<!-- BEGIN_TF_DOCS --> 

<!-- END_TF_DOCS --> 

