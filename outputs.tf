output "role_name" {
  description = "The name of the IAM role created"
  value       = google_project_iam_custom_role.custom_role.name
}

output "role_id" {
  description = "The ID of the IAM role created"
  value       = google_project_iam_custom_role.custom_role.role_id
}
