output "common_password" {
  description = "Common password for the project"
  value       = aws_secretsmanager_secret_version.common_password.secret_string
  sensitive   = true
}