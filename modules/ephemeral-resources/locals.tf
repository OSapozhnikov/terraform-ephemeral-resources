locals {
  # decode the json secret value
  gitlab_token = jsondecode(ephemeral.aws_secretsmanager_secret_version.gitlab_token.secret_string)
}