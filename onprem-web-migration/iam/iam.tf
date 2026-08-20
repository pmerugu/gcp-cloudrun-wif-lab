locals {
  admin_roles = [
    "roles/resourcemanager.projectIamAdmin",
    "roles/run.admin",
    "roles/artifactregistry.admin",
    "roles/cloudsql.admin",
    "roles/compute.networkAdmin",
    "roles/iam.serviceAccountAdmin",
    "roles/iam.serviceAccountUser",
    "roles/logging.admin",
    "roles/monitoring.admin"
  ]
}

resource "google_project_iam_member" "venkat_admin" {
  for_each = toset(local.admin_roles)

  project = var.project_id
  role    = each.value
  member  = var.admin_principal
}