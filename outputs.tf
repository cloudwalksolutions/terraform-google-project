

output "project_id" {
  value      = local.project_id
  depends_on = [google_project.gcp_project]
}

output "project_number" {
  value = google_project.gcp_project.number
}
