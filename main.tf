provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_service_account" "jenkins_sa" {
  account_id   = "jenkins-gce"
  display_name = "Jenkins GCE Service Account"
}

resource "google_project_iam_member" "jenkins_sa_binding" {
  project = var.project_id
  role    = "roles/compute.instanceAdmin"
  member  = "serviceAccount:${google_service_account.jenkins_sa.email}"
}
