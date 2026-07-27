resource "github_dependabot_organization_secret_repositories" "dependabot_organization_secret_repositories" {
  for_each = var.dependabot_organization_secret_repositories

  secret_name             = each.value.secret_name
  selected_repository_ids = each.value.selected_repository_ids
}

