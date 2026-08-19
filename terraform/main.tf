terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }

  backend "gcs" {
    bucket = "employee-dev-505820-tfstate"
    prefix = "terraform/employee-portal"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_artifact_registry_repository" "app" {
  location      = var.region
  repository_id = var.app_name
  description   = "Container images for ${var.app_name}"
  format        = "DOCKER"

  docker_config {
    immutable_tags = true
  }
}

resource "google_service_account" "runtime" {
  account_id   = "${var.app_name}-runtime"
  display_name = "Runtime service account for ${var.app_name}"
}