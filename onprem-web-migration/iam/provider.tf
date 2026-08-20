terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }

  required_version = ">= 1.5.0"

  backend "gcs" {
    bucket = "employee-dev-505820-tfstate"
    prefix = "iam"
  }
}

provider "google" {
  project = var.project_id
}