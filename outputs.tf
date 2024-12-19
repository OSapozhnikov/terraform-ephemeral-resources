output "common_password" {
  description = "Common password for the project"
  value     = module.common_resources.common_password
  sensitive = true
}

# Ephemeral outputs in context of a root module
# output "ephemeral_password" {
#   value     = module.ephemeral_resources.ephemeral_password
#   ephemeral = true
# }
