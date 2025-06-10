
resource "random_string" "random" {
  length  = 3
  lower   = true
  upper   = false
  numeric = false
  special = false
}

resource "google_project" "gcp_project" {
  name = local.project_name

  project_id      = local.project_id
  folder_id       = var.folder_id
  billing_account = var.billing_account

}


module "project_apis" {
  source = "terraform-google-modules/project-factory/google//modules/project_services"

  project_id                  = google_project.gcp_project.id
  disable_services_on_destroy = false
  activate_apis               = local.api_list

  depends_on = [google_project.gcp_project]

}


