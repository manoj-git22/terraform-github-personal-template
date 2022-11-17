# Define provider
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token        = "${var.gh_token}"
}

# Create repos
resource "github_repository" "repo" {
  count            = "${length(var.gh_repos)}"
  name             = "${var.gh_repos[count.index]}"
  description      = "${var.gh_repos[count.index]} repository"
}
