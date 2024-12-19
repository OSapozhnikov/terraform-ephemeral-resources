####################################################################################################
# Providers
####################################################################################################

provider "aws" {
  region  = "eu-central-1"
  profile = "wa-lections"
}

####################################################################################################
# Common resources
####################################################################################################
module "common_resources" {
  source = "./modules/common-resources"
  db_password = var.db_password
}

resource "local_file" "common_password" {
  content  = module.common_resources.common_password
  filename = "files/common_password.txt"
}

####################################################################################################
# Ephemeral resources
####################################################################################################
module "ephemeral_resources" {
  source = "./modules/ephemeral-resources"
  api_key = var.api_key
}

provider "gitlab" {
  base_url = "https://gitlab.quarkops.com"
  token    = module.ephemeral_resources.ephemeral_gitlab_key
}

module "gitlab-group" {
  source = "./modules/gitlab-group"
}
