# Variables definition file
variable "cloudflare_account_id" {
  type        = string
  description = "Your Cloudflare Account ID"
}

variable "cloudflare_api_token" {
  type        = string
  sensitive   = true
  description = "Cloudflare API Token with appropriate permissions"
}

variable "github_client_id" {
  type        = string
  description = "The Client ID provided by GitHub OAuth application"
}

variable "github_client_secret" {
  type        = string
  sensitive   = true
  description = "The Client Secret provided by GitHub OAuth application"
}

variable "zero_trust_org_name" {
  type        = string
  description = "Name of your Cloudflare Zero Trust Organization"
  default     = "My Zero Trust Org"
}

variable "zero_trust_auth_domain" {
  type        = string
  description = "Cloudflare Access authentication domain (e.g., mywarporg.cloudflareaccess.com)"
  default     = "mywarporg.cloudflareaccess.com"
}

variable "zero_trust_is_ui_read_only" {
  type        = bool
  description = "Whether the Zero Trust UI is read-only"
  default     = false
}

variable "github_idp_name" {
  type        = string
  description = "Name of the GitHub identity provider"
  default     = "GitHub"
}

variable "warp_enrollment_policy_name" {
  type        = string
  description = "Name of the WARP device enrollment policy"
  default     = "Allow GitHub Enrollment"
}

variable "warp_enrollment_policy_decision" {
  type        = string
  description = "Decision for the WARP enrollment policy (allow/deny)"
  default     = "allow"
}

variable "warp_enrollment_policy_include_emails" {
  type        = list(string)
  description = "List of email addresses allowed to enroll devices"
  default     = ["yourgithubemail@example.com"]
}

variable "warp_enrollment_policy_purpose_justification_required" {
  type        = bool
  description = "Whether purpose justification is required for enrollment"
  default     = false
}