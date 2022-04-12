output "github_repository_github_action_infra" {
  description               = "The object managing the overall module infra"
  value                     = module.gh_repo_tfc
}

output "github_repository_github_action" {
  description               = "Where the GH Action module lives"
  value                     = module.gh_repo_action
}