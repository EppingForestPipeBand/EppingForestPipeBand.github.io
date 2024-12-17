resource "github_repository" "website" {
  name                 = "EppingForestPipeBand.github.io"
  visibility           = "public"
  description          = "The Epping Forest Pipe Band website"
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  homepage_url         = "https://${var.domain}"
  topics               = ["pipe-band", "music", "scotland"]
  vulnerability_alerts = true

  pages {
    build_type = "workflow"
    cname      = var.domain
  }
}