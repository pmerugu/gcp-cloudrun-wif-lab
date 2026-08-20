variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "employee-dev-505820"
}

variable "admin_principal" {
  description = "Venkat's Workforce Identity Federation principal"
  type        = string

  default = "principal://iam.googleapis.com/locations/global/workforcePools/okta-workforce-prem-2026/subject/venkatmr2k26@gmail.com"
}