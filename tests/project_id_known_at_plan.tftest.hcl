mock_provider "google" {}
mock_provider "random" {}

variables {
  folder_id       = "folders/123456789"
  folder_name     = "demo"
  project_label   = "cw-admin"
  billing_account = "000000-000000-000000"
}

run "project_id_is_known_before_the_project_exists" {
  command = plan

  assert {
    condition     = output.project_id == "demo-cw-admin-project"
    error_message = "project_id was not known at plan time, so a consumer cannot key a for_each on it"
  }
}
