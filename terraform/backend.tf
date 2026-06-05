terraform {
  backend "gcs" {
    bucket = "datai-tf-state-${var.project_id}"
    prefix = "terraform/state"
  }
}