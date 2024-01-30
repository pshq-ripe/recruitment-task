terraform {
  required_version = ">= 1.7.0"

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.14.0"
    }
  }
}
provider "google" {
  project = var.project
  region  = var.region
}