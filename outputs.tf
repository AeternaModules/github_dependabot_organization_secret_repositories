output "dependabot_organization_secret_repositorieses_id" {
  description = "Map of id values across all dependabot_organization_secret_repositorieses, keyed the same as var.dependabot_organization_secret_repositorieses"
  value       = { for k, v in github_dependabot_organization_secret_repositories.dependabot_organization_secret_repositorieses : k => v.id }
}
output "dependabot_organization_secret_repositorieses_secret_name" {
  description = "Map of secret_name values across all dependabot_organization_secret_repositorieses, keyed the same as var.dependabot_organization_secret_repositorieses"
  value       = { for k, v in github_dependabot_organization_secret_repositories.dependabot_organization_secret_repositorieses : k => v.secret_name }
}
output "dependabot_organization_secret_repositorieses_selected_repository_ids" {
  description = "Map of selected_repository_ids values across all dependabot_organization_secret_repositorieses, keyed the same as var.dependabot_organization_secret_repositorieses"
  value       = { for k, v in github_dependabot_organization_secret_repositories.dependabot_organization_secret_repositorieses : k => v.selected_repository_ids }
}

