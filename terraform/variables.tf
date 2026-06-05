variable "project_id" {
  description = "The GCP Project ID passed from CI/CD variables"
  type        = string
}

variable "region" {
  description = "The default GCP region"
  type        = string
  default     = "europe-west6"
}