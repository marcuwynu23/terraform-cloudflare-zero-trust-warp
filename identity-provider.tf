# Configure Authentication with GitHub
resource "cloudflare_zero_trust_access_identity_provider" "github_idp" {
  account_id = var.cloudflare_account_id
  name       = var.github_idp_name
  type       = "github"

  config = {
    client_id     = var.github_client_id
    client_secret = var.github_client_secret
  }
}
