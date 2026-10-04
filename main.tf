terraform {
  required_version = ">= 1.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  # Recommended: remote state in GCS so Jenkins runs share it
  # backend "gcs" {
  #   bucket = "my-tf-state-bucket"
  #   prefix = "iam"
  # }
}

provider "google" {
  project = var.project_id
  region  = var.region
}
