variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "region" {
  type        = string
  description = "Default GCP region"
  default     = "asia-south1"
}

variable "service_account_id" {
  type        = string
  description = "Account ID for the application service account"
  default     = "app-sa"
}

variable "viewer_members" {
  type        = list(string)
  description = "Members who get the Viewer role, e.g. user:alice@example.com or group:devs@example.com"
  default     = []
}
