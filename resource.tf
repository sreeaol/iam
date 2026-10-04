# Service account for an application
resource "google_service_account" "app" {
  account_id   = var.service_account_id
  display_name = "Application Service Account"
}

# Project-level role for the service account
resource "google_project_iam_member" "app_storage_viewer" {
  project = var.project_id
  role    = "roles/storage.objectViewer"
  member  = "serviceAccount:${google_service_account.app.email}"
}

# Project-level Viewer role for people/groups
resource "google_project_iam_member" "viewers" {
  for_each = toset(var.viewer_members)
  project  = var.project_id
  role     = "roles/viewer"
  member   = each.value
}

# Custom role example
resource "google_project_iam_custom_role" "bucket_lister" {
  role_id     = "bucketLister"
  title       = "Bucket Lister"
  description = "Can list storage buckets"
  permissions = ["storage.buckets.list"]
}
