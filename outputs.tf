

output "project_id" {
  value = split("/", google_project.gcp_project.id)[1]
}

output "project_number" {
  value = google_project.gcp_project.number
}
