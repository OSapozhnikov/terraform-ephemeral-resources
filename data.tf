# data "aws_secretsmanager_secret" "gitlab_token" {
#   name = "wa/gitlab/token"
# }

# data "aws_secretsmanager_secret_version" "gitlab_token" {
#   secret_id = data.aws_secretsmanager_secret.gitlab_token.id
# }

# resource "local_file" "gitlab_token" {
#   content  = data.aws_secretsmanager_secret_version.gitlab_token.secret_string
#   filename = "files/gitlab_token.txt"
# }