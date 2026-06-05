terraform {
  backend "gcs" {
    bucket = "datai-tf-state-datai-core"
    prefix = "terraform/state"
  }
}