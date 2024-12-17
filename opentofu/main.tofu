terraform {
  required_version = "1.8.5"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.43.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }

  }
}
