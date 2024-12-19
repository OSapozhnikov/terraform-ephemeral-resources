################################################
# Project
################################################
# variable "project_name" {
#   description = "Project name"
#   type        = string

#   validation {
#     condition     = length(var.project) >= 3 && var.project != null && var.project != ""
#     error_message = "Error: Incorrect project name."
#   }
# }

# variable "environment_name" {
#   description = "Environment name for deployment"
#   type        = string
#   default     = "dev"

#   validation {
#     condition     = can(regex("^[[:alnum:]]*", var.environment_name))
#     error_message = "Error: Incorrect environment name. Name should be in format $name*."
#   }
# }

variable "db_password" {
  description = "Common password for the project"
  type        = string
  sensitive   = true
}

variable "api_key" {
  type        = string
  ephemeral   = true
  description = "an api key not stored in state"
}