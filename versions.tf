terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.0"
    }
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "17.6.1"
    }
  }
  required_version = ">= 1.10"
}