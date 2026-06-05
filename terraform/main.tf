# 1. Enable necessary GCP APIs automatically
resource "google_project_service" "services" {
  for_each = toset([
    "run.googleapis.com",
    "artifactregistry.googleapis.com",
    "cloudbuild.googleapis.com",
    "iam.googleapis.com"
  ])
  service            = each.key
  disable_on_destroy = false
}

# 2. Create the Docker Repository
resource "google_artifact_registry_repository" "docker_repo" {
  location      = var.region
  repository_id = "datai-apps"
  description   = "Docker repository for datai.ch applications"
  format        = "DOCKER"

  depends_on = [google_project_service.services] 
}