variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "Region for resources"
  type        = string
  default     = "us-central1"
}

variable "role_id" {
  description = "Custom IAM role ID"
  type        = string
}

variable "role_title" {
  description = "Title of the IAM role"
  type        = string
}

variable "role_description" {
  description = "Description of the IAM role"
  type        = string
}

variable "permissions" {
  description = "List of permissions for the role"
  type        = list(string)
}
