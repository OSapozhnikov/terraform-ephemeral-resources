
# Generate random password
resource "random_password" "common_password" {
  length           = 16
  special          = true
  override_special = "_"
  min_upper        = 5
  min_lower        = 1
  min_numeric      = 5
  min_special      = 3
}

resource "aws_secretsmanager_secret" "common_password" {
  name = "wa/common_password"
  tags = {
    "name"       = "common_password"
    "managed-by" = "terraform"
  }
}

resource "aws_secretsmanager_secret_version" "common_password" {
  secret_id     = aws_secretsmanager_secret.common_password.id
  secret_string = random_password.common_password.result
}

# Provided password
resource "aws_secretsmanager_secret" "db_password" {
  name = "wa/db_password"
  tags = {
    "name"       = "db_password"
    "managed-by" = "terraform"
  }
}

resource "aws_secretsmanager_secret_version" "db_password" {
  secret_id     = aws_secretsmanager_secret.db_password.id
  secret_string = var.db_password
}
