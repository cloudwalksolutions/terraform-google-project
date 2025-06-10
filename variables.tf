
variable "billing_account" {
  description = "GCP Billing Account"
  type        = string
  default     = "015AC7-0AC616-A423D8"
}


variable "folder_id" {
  description = "Folder ID for project"
  type        = string
}


variable "project_label" {
  description = "Project label"
  type        = string
}


variable "platform_name" {
  description = "GKE platform name"
  type        = string
  default     = ""
}


variable "lifecycle_name" {
  description = "Lifecycle name"
  type        = string
  default     = ""
}


variable "folder_name" {
  description = "Folder name for project"
  type        = string
  default     = ""
}


variable "use_random_id" {
  description = "Whether project ID should have random suffix"
  type        = bool
  default     = false
}


variable "project_id" {
  description = "Project ID"
  type        = string
  default     = ""
}


variable "default_apis" {
  description = "List of default APIs to enable"
  type        = list(string)
  default = [
    "cloudresourcemanager.googleapis.com",
  ]
}


variable "additional_apis" {
  description = "List of additional APIs to enable"
  type        = list(string)
  default     = []
}


variable "proj_identifier" {
  description = "Optional project set identifier"
  type        = string
  default     = ""
}


variable "use_folder_name" {
  description = "Whether folder name should be used in the project ID"
  type        = bool
  default     = true
}

