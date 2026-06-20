# Device Enrollment Permissions & WARP Login Policy
# In Cloudflare One, device enrollment is treated as an Access Policy targeted at the enrollment application.
resource "cloudflare_zero_trust_access_policy" "warp_enrollment_policy" {
  account_id                     = var.cloudflare_account_id
  name                           = var.warp_enrollment_policy_name
  decision                       = var.warp_enrollment_policy_decision
  purpose_justification_required = var.warp_enrollment_policy_purpose_justification_required

  # Example rule configuration (Include specific emails)
  include = [
    for email in var.warp_enrollment_policy_include_emails : {
      email = email
    }
  ]

  # Enforce that GitHub authentication must be used
  require = [
    {
      identity_provider = {
        id = cloudflare_zero_trust_access_identity_provider.github_idp.id
      }
    }
  ]
}
