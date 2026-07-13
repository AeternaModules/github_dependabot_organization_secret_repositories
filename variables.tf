variable "dependabot_organization_secret_repositorieses" {
  description = <<EOT
Map of dependabot_organization_secret_repositorieses, attributes below
Required:
    - secret_name
    - selected_repository_ids
EOT

  type = map(object({
    secret_name             = string
    selected_repository_ids = set(number)
  }))
  # --- Unconfirmed validation candidates, derived from github_dependabot_organization_secret_repositories's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: secret_name
  #   source:    validateSecretNameFunc: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
}

