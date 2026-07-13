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
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

