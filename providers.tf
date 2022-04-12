# TerraForm Cloud - set environment variable: TFE_TOKEN
provider "tfe" {} 

## GitHub
terraform {
  
#  cloud {
#    organization    = "library-ucsb-core"
#    workspaces {
#      name          = ""
#    }
#  }

  required_providers {
    tfe = {
      version = "~> 0.27.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# GitHub - set environment variable: GITHUB_TOKEN
provider "github" {
  owner			= var.provider_github_owner
}