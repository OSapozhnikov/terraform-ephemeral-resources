output "ephemeral_gitlab_key" {
  description = "Ephemeral api key for the project"
  value       = local.gitlab_token.token
  ephemeral   = true
}

output "ephemeral_api_key" {
  description = "Ephemeral api key for the project"
  value       = var.api_key
  ephemeral   = true
}
