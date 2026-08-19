variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "employee-dev-505820"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "app_name" {
  description = "Application name"
  type        = string
  default     = "employee-portal"
}