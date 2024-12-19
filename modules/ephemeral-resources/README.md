<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.gitlab_token](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| api\_key | an api key not stored in state | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| ephemeral\_api\_key | Ephemeral api key for the project |
| ephemeral\_gitlab\_key | Ephemeral api key for the project |
<!-- END_TF_DOCS -->