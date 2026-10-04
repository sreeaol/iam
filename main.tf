provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_project_iam_custom_role" "custom_role" {
  role_id     = var.role_id
  title       = var.role_title
  description = var.role_description
  permissions = var.permissions
}
