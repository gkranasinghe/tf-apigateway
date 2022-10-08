terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"

    }
    random = {
      source = "hashicorp/random"

    }
  }
  required_version = ">= 1.1.0"


  # backend "remote" {
  #   organization = "gkranasinghe"

  #   workspaces {
  #     prefix = "gkranasinghe-"
  #   }
  # }

}