# Ephemeral resources
data "aws_secretsmanager_secret" "gitlab_token" {
  name = "wa/gitlab/token"
}

ephemeral "aws_secretsmanager_secret_version" "gitlab_token" {
  secret_id     = data.aws_secretsmanager_secret.gitlab_token.id
}
