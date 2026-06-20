# Define your Zero Trust Organization
resource "cloudflare_zero_trust_organization" "my_org" {
  account_id      = var.cloudflare_account_id
  name            = var.zero_trust_org_name
  auth_domain     = var.zero_trust_auth_domain
  is_ui_read_only = var.zero_trust_is_ui_read_only
}
