variable "gh_token" {
  description = "GitHub token"
}

variable "gh_repos" {
  description = "List of repos in your GitHub"
  type        = "list"
  default     = []
}
