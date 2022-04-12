# oauth_clients
data "tfe_oauth_client" "library-ucsb-github" {
  oauth_client_id = "oc-3VagcH3HmhSKNQDv"
}

data "tfe_oauth_client" "ucsb_github" {
  oauth_client_id = "oc-q3pUBuyQCyjioQ8u" 
}
 
data "tfe_oauth_client" "github_library-ucsb" {
  oauth_client_id = "oc-pga3NiSumJzwPVft"
} 

# GitHub Repo: For this TF Code
module "gh_repo_tfc" {
  source                    = "app.terraform.io/library-ucsb-core/module-github_repository/tfc"
    
  name                      = "github_action-infra-${var.github_action_name}"
  auto_init                 = false
  visibility                = "public"
}

# GitHub Repo: The GH Action Repository
module "gh_repo_action" {
  source                    = "app.terraform.io/library-ucsb-core/module-github_repository/tfc"
    
  name                      = "github_action-${var.github_action_name}"
  auto_init                 = false
  visibility                = "public"
}

