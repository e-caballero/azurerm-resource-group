variable "location" {
  description = "- (Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}
variable "additional_tags" {
  description = "Additional tags added to all resources"
  type        = map(any)
  default     = {}
}
variable "environment" {
  description = "The environment of the system as defined by the data classification process. Valid values for environment are (Development, Test, Production)."
  type        = string
  validation {
    condition     = contains(["dev", "stg", "qa", "pi", "prd"], var.environment)
    error_message = "Valid values for environment are (dev, stg, qa, pi, prd)."
  }
}
variable "application_id" {
  description = "The application ID of the system as defined by the data classification process. Valid values for application_id are (APP-0001, APP-0002, APP-0003)."
  type        = string
  validation {
    condition     = contains(["APP-0001", "APP-0002", "APP-0003"], var.application_id)
    error_message = "Valid values for application_id are (APP-0001, APP-0002, APP-0003)."
  }
}
variable "application_owner" {
  description = "The application owner of the system as defined by the data classification process. Valid values for application_owner are (John Doe, Jane Doe, John Smith)."
  type        = string
  validation {
    condition     = contains(["John Doe", "Jane Doe", "John Smith"], var.application_owner)
    error_message = "Valid values for application_owner are (John Doe, Jane Doe, John Smith)."
  }
}
variable "application_owner_email" {
  description = "The application owner email of the system as defined by the data classification process. Valid values for application_owner_email are ( first.last@company.com)"
  type        = string
  validation {
    condition     = can(regex("^[a-z,A-Z,.]{1,}@company.com$", var.application_owner_email))
    error_message = "Valid values for application_owner_email are (first.last@company.com)"
  }
}
variable "application_team" {
  description = "The application team of the system as defined by the data classification process. Valid values for application_team are (Team 1, Team 2, Team 3)."
  type        = string
  validation {
    condition     = contains(["Team 1", "Team 2", "Team 3"], var.application_team)
    error_message = "Valid values for application_team are (Team 1, Team 2, Team 3)."
  }
}
variable "application_team_email" {
  description = "The application team email of the system as defined by the data classification process. Valid values for application_team_email are (team1@company.com)"
  type        = string
  validation {
    condition     = can(regex("^[a-z,A-Z,.]{1,}@company.com$", var.application_team_email))
    error_message = "Valid values for application_team_email are (team1@company.com"
  }
}
variable "application_team_slack" {
  description = "The application team slack of the system as defined by the data classification process. Valid values for application_team_slack are (https://app.slack.com/huddle/1234/123)"
  type        = string
  validation {
    condition     = can(regex("^(https://app.slack.com/huddle/1234/123)$", var.application_team_slack))
    error_message = "Valid values for application_team_slack are (https://app.slack.com/huddle/1234/123)"
  }
  default = "https://app.slack.com/huddle/1234/123"
}
variable "application_teams_channel" {
  description = "The application team Microsoft Teams channel of the system as defined by the data classification process. Valid values for application_teams_channel are (https://teams.microsoft.com/l/channel/1234/123)"
  type        = string
  validation {
    condition     = can(regex("^(https://teams.microsoft.com/l/channel/1234/123)$", var.application_teams_channel))
    error_message = "Valid values for application_teams_channel are (https://teams.microsoft.com/l/channel/1234/123)"
  }
  default = "https://teams.microsoft.com/l/channel/1234/123"
}
variable "component_name" {
  description = "The component name of the system as defined by the data classification process. Valid values for component_name are (component1, component2, component3)."
  type        = string
  validation {
    condition     = contains(["component1", "component2", "component3"], var.component_name)
    error_message = "Valid values for component_name are (component1, component2, component3)."
  }
}

variable "project" {
  description = "The project of the system as defined by the data classification process. Valid values for project are (project1, project2, project3)."
  type        = string
}

variable "description" {
  description = "The description of the system as defined by the data classification process. Valid values for description are (description1, description2, description3)."
  type        = string
  default = ""
}

variable "external" {
  description = "The external of the system as defined by the data classification process. Valid values for external are (external1, external2, external3)."
  type        = string
}

variable "cost_center" {
  description = "The cost center of the system as defined by the data classification process. Valid values for cost_center are (cost_center1, cost_center2, cost_center3)."
  type        = string
}

variable "compliance" {
  description = "The compliance of the system as defined by the data classification process. Valid values for compliance are (compliance1, compliance2, compliance3)."
  type        = string
}
variable "count_number" {
  description = "The count number of the system as defined by the data classification process. Valid values for count_number are (count_number1, count_number2, count_number3)."
  type        = string
}






