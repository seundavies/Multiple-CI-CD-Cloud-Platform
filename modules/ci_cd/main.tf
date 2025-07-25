provider "github" {
    token =var.github_token
    owner = var.github_owner
}


resource "github_repository" "ci_cd_repo" {
  name = var.github_repo
  description = "Multi-cloud CI/CD Terraform managed repo"
  visibility = "private"
  auto_init = true
}