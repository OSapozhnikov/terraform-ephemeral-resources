<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| random | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.common_password](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret.db_password](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.common_password](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_secretsmanager_secret_version.db_password](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [random_password.common_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| db\_password | Common password for the project | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| common\_password | Common password for the project |
<!-- END_TF_DOCS -->