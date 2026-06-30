
terraform {
  required_version = ">= 1.0"

  backend "gcs" {}

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.19"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 7.38"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
