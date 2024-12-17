import {
  to = github_repository.website
  id = "EppingForestPipeBand/efpb-org"
}

resource "github_repository" "website" {
  name = "efpb-org"
  visibility = "public"
  
  pages {
    build_type = "workflow"
    cname      = var.domain
  }
}