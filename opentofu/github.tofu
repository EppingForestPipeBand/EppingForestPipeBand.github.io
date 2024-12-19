resource "github_repository" "website" {
  name         = "EppingForestPipeBand.github.io"
  visibility   = "public"
  description  = "The Epping Forest Pipe Band website"
  has_issues   = true
  has_projects = true
  has_wiki     = true
  homepage_url = "https://${var.domain}"
  topics = [
    "bagpipes",
    "community-band",
    "continuous-deployment",
    "continuous-integration",
    "drumming",
    "folk-music",
    "github-pages",
    "highland-dance",
    "highland-games",
    "instrumental",
    "jekyll",
    "live-music",
    "marches",
    "music",
    "music-events",
    "open-source",
    "parades",
    "performance",
    "pipe-band",
    "pipe-band-music",
    "scotland",
    "scottish-heritage",
    "scottish-tradition",
    "traditional-music",
  ]
  vulnerability_alerts = true

  pages {
    build_type = "workflow"
    cname      = var.domain
  }
}

resource "github_actions_organization_variable" "domain" {
  value         = var.domain
  variable_name = "DOMAIN"
  visibility    = "all"
}
