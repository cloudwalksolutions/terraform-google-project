
locals {
  lifecycle_letter = var.lifecycle_name != "" ? substr(var.lifecycle_name, 0, 1) : ""

  project_label  = var.proj_identifier != "" ? "${var.proj_identifier}-${var.project_label}" : var.project_label
  project_suffix = "${local.project_label}-project"
  project_name_  = var.use_folder_name && var.folder_name != "" ? "${var.folder_name}-${local.project_suffix}" : local.project_suffix
  project_name   = local.lifecycle_letter != "" ? "${local.lifecycle_letter}-${local.project_name_}" : local.project_name_
  project_id     = var.use_random_id ? "${local.project_name}-${random_string.random.result}" : local.project_name

  api_list = concat(var.default_apis, var.additional_apis)

}
